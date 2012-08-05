module SessionsHelper
  def sign_in(user)
    # Sign the user in
    cookies.permanent[:remember_token] = { value: user.remember_token }
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
    @current_user
  end

  def current_user? user
    user == current_user
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

end
