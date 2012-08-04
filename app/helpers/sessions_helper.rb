module SessionsHelper
  def sign_in(user)
    # Sign the user in
    cookies[:remember_token] = { value: user.remember_token, 
                                expires: 20.years.from_now
                                }

  end
end
