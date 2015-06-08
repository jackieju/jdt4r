class UserappController < ApplicationController
    before_filter :check_session
    def index
        @apps = []
        list = Userapp.find_by_sql("select * from userapps where uid=#{@current_uid }")
        list.each{|app|
            res = Doorkeeper::Application.find_by_sql("select * from oauth_applications where id=#{app.app}")
            if res && res.size >0
                @apps.push(res[0])
            end
        }
        render :layout=>true
        
        
    end
    
    def install
        appid = params[:appid]
        
        if appid == nil
            render :text=>"App not exists"
            return
        end
        
        res = Userapp.find_by_sql("select * from userapps where uid=#{@current_uid} and app=#{appid}")
        
        if res && res.size > 0
            render :text=>"You already installed this app." 
            return
        end
        
        app = Doorkeeper::Application.find(appid)
        if app == nil
            render :text=>"App not exists"
            return
        end
        
        app = Userapp.new({
            :uid=>@current_uid,
            :app=>appid
        }).save!
        
        render :text=>"Install successfully."
    end
end
