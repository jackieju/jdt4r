class TestapiController < ApplicationController
    before_filter :check_session
   before_action :doorkeeper_authorize! # Require access token for all actions
  def index
      render :text=>'call this api ok'
  end
end
