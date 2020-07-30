class ApplicationController < ActionController::Base
    before_action :authorized

    # private 

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
        # helper_method :current_user #make private method accessible for the view
    end
    
    def logged_in
        !!current_user
    end

    def authorized
        redirect_to login_path unless logged_in
    end

end
