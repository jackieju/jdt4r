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
        show_in_left =0 
        if params[:show_in_left] && params[:show_in_left]=="on"
            show_in_left = 1
        end
        appext = Appext.new({
            :appid=>@app.id,
            :name=>@app.name,
            :show_in_left=>show_in_left,
            # :icon_s=>,
            # :icon_s=>,
            # :icon_s=>,
        })
        appext.save!
        render :layout=>true
 
    end
    
    def showapp
        @app = Doorkeeper::Application.find(params[:appid])
         @appext = nil
        res = Appext.find_by_sql("select * from appexts where appid=#{@app.id}")
        if res && res.size > 0
             @appext = res[0]
         end
        p @app.inspect
    end
    def updateapp
        appid = params[:appid]
        @app = Doorkeeper::Application.find(params[:appid])
        
        @app[:name]=params[:name]
        @app[:redirect_uri]=params[:redirect_uri]
        @app[:cat]=params[:cat]

        @app.save!
        
        show_in_left =0 
        if params[:show_in_left] && params[:show_in_left]=="on"
            show_in_left = 1
        end
         @appext = get_appext(@app.id)
         if @appext == nil
             p "--->11111"
             @appext = Appext.new({
                 :appid=>@app.id,
                 :name=>@app.name,
                 :show_in_left=>show_in_left,
                 # :icon_s=>,
                 # :icon_s=>,
                 # :icon_s=>,
             })
         @appext.save!
        else
            p "--->22222"
            
             @appext[:show_in_left] = params[:show_in_left]
             @appext.save!
         end
         
        render :layout=>true
    end
end
