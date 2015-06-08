class DevController < ApplicationController
    before_filter :check_session
    
    def index
       
        @apps = Doorkeeper::Application.find_by_sql("select * from oauth_applications where author=#{@current_uid}")
        render :layout=>true
   
    end
    
    def pre_create
        render :layout=>true
        
    end
    
    def createapp
        
        @app = Doorkeeper::Application.new({
            # :uid=>Doorkeeper::Application.generate_uid,
            # :screct=>Doorkeeper::Application.generate_secret,
            :name=>params[:name],
            :redirect_uri=>params[:redirect_uri],
            :author=>@current_uid,
            :cat=>params[:cat]
        })
        @app.save!
        render :layout=>true
 
    end
    
    def showapp
        @app = Doorkeeper::Application.find(params[:appid])
    end
    def updateapp
        appid = params[:appid]
        @app = Doorkeeper::Application.find(params[:appid])
        @app[:name]=params[:name]
        @app[:redirect_uri]=params[:redirect_uri]
        @app[:cat]=params[:cat]

        @app.save!
        render :layout=>true
    end
end
