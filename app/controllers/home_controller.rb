require 'doorkeeper/orm/active_record/application.rb'
class HomeController < ApplicationController
    
     helper :all
    def login
    end
    
    def logout
        uid = session[:uid]
        if uid == nil
            render :text=>"You are currently not logged in."
            return 
        end
        session.delete(:uid)
        render :text=>"user #{uid} logged out"
    end
    
    def index
        return if !check_session
            
        @template = Liquid::Template.parse("hi {{name}}") # Parses and compiles the template
        @template.render('name' => 'tobi')                # => "hi tobi"
        
        render :layout=>true
        
    end
    
    def listapps
        return if !check_session
        @user = current_user
        p @user.inspect
        @applications = Doorkeeper::Application.all
        render :layout=>true
    end
    
    def userapp
    end
end
