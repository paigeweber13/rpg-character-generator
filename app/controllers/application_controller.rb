class ApplicationController < ActionController::Base
    protect_from_forgery
    
    private
        def current_character
            @current_character ||= Character.find_by_id(session[:character_id]) if session[:character_id]
        end
        
        helper_method :current_character
end
