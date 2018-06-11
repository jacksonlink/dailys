class LatesController < ApplicationController
  before_action :set_late, only: [:show, :edit, :update, :destroy]

  # GET /lates
  # GET /lates.json
  def index
    @lates = Late.all.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /lates/1
  # GET /lates/1.json
  def show
  end

  # GET /lates/new
  def new
    @late = Late.new
  end

  # GET /lates/1/edit
  def edit
  end

  # POST /lates
  # POST /lates.json
  def create
    @late = Late.new(late_params)

    respond_to do |format|
      if @late.save
        format.html { redirect_to @late, notice: 'Late was successfully created.' }
        format.json { render :show, status: :created, location: @late }
      else
        format.html { render :new }
        format.json { render json: @late.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lates/1
  # PATCH/PUT /lates/1.json
  def update
    respond_to do |format|
      if @late.update(late_params)
        format.html { redirect_to @late, notice: 'Late was successfully updated.' }
        format.json { render :show, status: :ok, location: @late }
      else
        format.html { render :edit }
        format.json { render json: @late.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lates/1
  # DELETE /lates/1.json
  def destroy
    @late.destroy
    respond_to do |format|
      format.html { redirect_to lates_url, notice: 'Late was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_late
      @late = Late.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def late_params
      params.require(:late).permit(:date, :schedule, :impediment, :user_id)
    end
end
