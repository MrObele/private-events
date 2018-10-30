module SessionsHelper
  def current_user
   User.find_by(email: session[:email])
  end

  def log_in(user)
    session[:email] = user.email
  end

 def logged_in?
   !current_user.nil?
 end


end
