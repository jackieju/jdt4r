class TestapiController < ApplicationController
    before_filter :check_session
   before_action :doorkeeper_authorize! # Require access token for all actions
   skip_before_filter :verify_authenticity_token, only: [:userInstalledApps]   
  def index
      render :text=>'call this api ok'
  end
  
  # # Find the user that owns the access token
  # def current_resource_owner
  #   user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  #   @current_uid = user.id
  #   return user
  # end
  
  def userInstalledApps
      # current_resource_owner
      # p "current_resource_owner:#{current_resource_owner}"
      if params[:apps]
        appids = params[:apps].split(",")
      end
      if appids
          res = Userapp.find_by_sql("select * from userapps,oauth_applications where userapps.app=oauth_applications.id and userapps.uid=#{@current_uid} and userapps.app in (#{appids.join(',')})")
      else
          res = Userapp.find_by_sql("select * from userapps,oauth_applications where userapps.app=oauth_applications.id and userapps.uid=#{@current_uid}")
      end
      p "res:#{res.to_json}"
      render :text=>res.to_json
  end
end
