class EarliesController < ApplicationController
  before_action :set_early, only: [:show, :edit, :update, :destroy]

  # GET /earlies
  # GET /earlies.json
  def index
    @earlies = Early.all
  end

  # GET /earlies/1
  # GET /earlies/1.json
  def show
  end

  # GET /earlies/new
  def new
    @early = Early.new
  end

  # GET /earlies/1/edit
  def edit
  end

  # POST /earlies
  # POST /earlies.json
  def create
    @early = Early.new(early_params)

    respond_to do |format|
      if @early.save
        format.html { redirect_to @early, notice: 'Early was successfully created.' }
        format.json { render :show, status: :created, location: @early }
      else
        format.html { render :new }
        format.json { render json: @early.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earlies/1
  # PATCH/PUT /earlies/1.json
  def update
    respond_to do |format|
      if @early.update(early_params)
        format.html { redirect_to @early, notice: 'Early was successfully updated.' }
        format.json { render :show, status: :ok, location: @early }
      else
        format.html { render :edit }
        format.json { render json: @early.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earlies/1
  # DELETE /earlies/1.json
  def destroy
    @early.destroy
    respond_to do |format|
      format.html { redirect_to earlies_url, notice: 'Early was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_early
      @early = Early.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def early_params
      params.require(:early).permit(:date, :schedule, :impediment, :user_id)
    end
end
