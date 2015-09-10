class AppextsController < ApplicationController
  before_action :set_appext, only: [:show, :edit, :update, :destroy]

  # GET /appexts
  # GET /appexts.json
  def index
    @appexts = Appext.all
  end

  # GET /appexts/1
  # GET /appexts/1.json
  def show
  end

  # GET /appexts/new
  def new
    @appext = Appext.new
  end

  # GET /appexts/1/edit
  def edit
  end

  # POST /appexts
  # POST /appexts.json
  def create
    @appext = Appext.new(appext_params)

    respond_to do |format|
      if @appext.save
        format.html { redirect_to @appext, notice: 'Appext was successfully created.' }
        format.json { render :show, status: :created, location: @appext }
      else
        format.html { render :new }
        format.json { render json: @appext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appexts/1
  # PATCH/PUT /appexts/1.json
  def update
    respond_to do |format|
      if @appext.update(appext_params)
        format.html { redirect_to @appext, notice: 'Appext was successfully updated.' }
        format.json { render :show, status: :ok, location: @appext }
      else
        format.html { render :edit }
        format.json { render json: @appext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appexts/1
  # DELETE /appexts/1.json
  def destroy
    @appext.destroy
    respond_to do |format|
      format.html { redirect_to appexts_url, notice: 'Appext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appext
      @appext = Appext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appext_params
      params.require(:appext).permit(:appid, :name)
    end
end
