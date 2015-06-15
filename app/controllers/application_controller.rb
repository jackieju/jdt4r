require 'settings.rb'
class ApplicationController < ActionController::Base
    # before_filter :check_session
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :set_header_for_iframe
  # layout :true
   private
   def set_header_for_iframe 
       response.headers.delete "X-Frame-Options" 
       p "=====>done"
   end
  helper :all
    
    def check_session
        p "session[:uid]=#{session[:uid] }"
        if session[:uid] == nil
            redirect_to :controller => '/home', :action => 'login'
            return false
        end
        
        @current_uid = session[:uid]
        current_user
        return true
    end
    
    def current_user
        return @current_user if @current_user != nil
        if session[:uid] == nil
            return nil
        end
        @current_user = User.find(session[:uid])
    end
end
