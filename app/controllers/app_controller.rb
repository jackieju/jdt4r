class AppController < ApplicationController
    before_filter :check_session
    
    def index
        appname = params[:app]
        res = Doorkeeper::Application.find_by_sql("select * from oauth_applications where name='#{appname}'")
        if res && res.size >0
            @app = res[0]
        end
        if params[:inframe] && params[:inframe].to_i == 1
            render :layout=>false
            return
        end
    end
end
