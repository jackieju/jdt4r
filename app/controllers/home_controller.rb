require 'doorkeeper/orm/active_record/application.rb'
class HomeController < ApplicationController
    before_filter :check_session , only: [:home]
    
     helper :all
    def login
        @redirect_uri = params[:redirect_uri]
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
    
    def home
        @apps = []
        list = Userapp.find_by_sql("select * from userapps where uid=#{@current_uid }")
        list.each{|app|
            res = Doorkeeper::Application.find_by_sql("select * from oauth_applications where id=#{app.app}")
            if res && res.size >0
                appext = get_appext(app.app)
                if appext && appext.show_in_left == 1
                    @apps.push(res[0])
                end
            end
        }
        render :layout=>true
    end
end
