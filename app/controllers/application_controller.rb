require 'settings.rb'
class ApplicationController < ActionController::Base
    # before_filter :check_session
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :set_header_for_iframe, :cors_set_access_control_headers
  # layout :true
   private
   def set_header_for_iframe 
       response.headers.delete "X-Frame-Options" 
       # p "=====>done"
   end
   def cors_set_access_control_headers
     headers['Access-Control-Allow-Origin'] = '*'
     headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
     headers['Access-Control-Allow-Headers'] = '*'
     headers['Access-Control-Max-Age'] = "1728000"
   end
  helper :all
    
    def check_session
        p "session[:uid]=#{session[:uid] }"
        
        if session[:uid] == nil
            @current_user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
            if @current_user
                session[:uid] = @current_user.id 
            else
            
                redirect_to :controller => '/home', :action => 'login'
                return false
            end
        end
        p "--->2"
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
    
    
    def get_appext(appid)
        appext = nil
        res = Appext.find_by_sql("select * from appexts where appid=#{appid}")
        if res && res.size > 0
             appext = res[0]
         end
         return appext
    end
end
