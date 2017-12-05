class ActividadExtrasController < ApplicationController
  before_action :set_actividad_extra, only: [:show, :edit, :update, :destroy]

  # GET /actividad_extras
  # GET /actividad_extras.json
  def index
    @actividad_extras = ActividadExtra.all
  end

  # GET /actividad_extras/1
  # GET /actividad_extras/1.json
  def show
  end

  # GET /actividad_extras/new
  def new
    @actividad_extra = ActividadExtra.new
  end

  # GET /actividad_extras/1/edit
  def edit
  end

  # POST /actividad_extras
  # POST /actividad_extras.json
  def create
    @actividad_extra = ActividadExtra.new(actividad_extra_params)

    respond_to do |format|
      if @actividad_extra.save
        format.html { redirect_to @actividad_extra, notice: 'Actividad extra was successfully created.' }
        format.json { render :show, status: :created, location: @actividad_extra }
      else
        format.html { render :new }
        format.json { render json: @actividad_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividad_extras/1
  # PATCH/PUT /actividad_extras/1.json
  def update
    respond_to do |format|
      if @actividad_extra.update(actividad_extra_params)
        format.html { redirect_to @actividad_extra, notice: 'Actividad extra was successfully updated.' }
        format.json { render :show, status: :ok, location: @actividad_extra }
      else
        format.html { render :edit }
        format.json { render json: @actividad_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividad_extras/1
  # DELETE /actividad_extras/1.json
  def destroy
    @actividad_extra.destroy
    respond_to do |format|
      format.html { redirect_to actividad_extras_url, notice: 'Actividad extra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad_extra
      @actividad_extra = ActividadExtra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividad_extra_params
      params.require(:actividad_extra).permit(:nombre, :descripcion)
    end
end
