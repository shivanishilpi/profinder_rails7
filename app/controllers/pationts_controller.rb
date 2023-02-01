class PationtsController < ApplicationController
  before_action :set_pationt, only: %i[ show edit update destroy ]

  # GET /pationts or /pationts.json
  def index
    @pationts = Pationt.all
  end

  # GET /pationts/1 or /pationts/1.json
  def show
    # @pationt.physicians.find(params[:physician_id])
  end

  # GET /pationts/new
  def new
    @pationt = Pationt.new
    @pationt.physicians.build
    @pationt.appointments.build
  end

  # GET /pationts/1/edit
  def edit
  end

  # POST /pationts or /pationts.json
  def create
    @pationt = Pationt.create(pationt_params)
    respond_to do |format|
      if @pationt.save
        format.html { redirect_to pationt_url(@pationt), notice: "Pationt was successfully created." }
        format.json { render :show, status: :created, location: @pationt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pationt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pationts/1 or /pationts/1.json
  def update
    respond_to do |format|
      if @pationt.update(pationt_params)
        format.html { redirect_to pationt_url(@pationt), notice: "Pationt was successfully updated." }
        format.json { render :show, status: :ok, location: @pationt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pationt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pationts/1 or /pationts/1.json
  def destroy
    @pationt.destroy

    respond_to do |format|
      format.html { redirect_to pationts_url, notice: "Pationt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pationt
      @pationt = Pationt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pationt_params
      params.require(:pationt).permit(:name, physicians_attributes: [:physician_id, :name])
    end
end
