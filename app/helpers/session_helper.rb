module SessionsHelper
    # Logs in the given user.
    def log_in(user)
    session[:user_id] = user.id
    end
    # Remembers a user in a persistent session.
    # Returns the user corresponding to the remember token cookie.
    def current_user
    if (user_id = session[:user_id])
    @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.encrypted[:user_id])
    user = User.find_by(id: user_id)
    if user && user.authenticated?(cookies[:remember_token])
    end
    end
end
end