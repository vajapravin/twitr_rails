class TweedsController < ApplicationController
  before_action :set_tweed, only: [:show, :edit, :update, :destroy]

  # GET /tweeds
  # GET /tweeds.json
  def index
    @tweeds = Tweed.all
  end

  # GET /tweeds/1
  # GET /tweeds/1.json
  def show
  end

  # GET /tweeds/new
  def new
    @tweed = Tweed.new
  end

  # GET /tweeds/1/edit
  def edit
  end

  # POST /tweeds
  # POST /tweeds.json
  def create
    @tweed = Tweed.new(tweed_params)

    respond_to do |format|
      if @tweed.save
        format.html { redirect_to @tweed, notice: 'Tweed was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tweed }
      else
        format.html { render action: 'new' }
        format.json { render json: @tweed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeds/1
  # PATCH/PUT /tweeds/1.json
  def update
    respond_to do |format|
      if @tweed.update(tweed_params)
        format.html { redirect_to @tweed, notice: 'Tweed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tweed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeds/1
  # DELETE /tweeds/1.json
  def destroy
    @tweed.destroy
    respond_to do |format|
      format.html { redirect_to tweeds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweed
      @tweed = Tweed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweed_params
      params.require(:tweed).permit(:creator_id, :content)
    end
end
