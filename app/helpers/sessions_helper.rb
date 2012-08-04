module SessionsHelper
  def sign_in(user)
    # Sign the user in
    cookies.permanent[:remember_token] = { value: user.remember_token }

  end
end
