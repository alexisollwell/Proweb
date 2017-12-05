class AlumnoActividadsController < ApplicationController
  before_action :set_alumno_actividad, only: [:show, :edit, :update, :destroy]

  # GET /alumno_actividads
  # GET /alumno_actividads.json
  def index
    @alumno_actividads = AlumnoActividad.all
  end

  # GET /alumno_actividads/1
  # GET /alumno_actividads/1.json
  def show
  end

  # GET /alumno_actividads/new
  def new
    @alumno_actividad = AlumnoActividad.new
  end

  # GET /alumno_actividads/1/edit
  def edit
  end

  # POST /alumno_actividads
  # POST /alumno_actividads.json
  def create
    @alumno_actividad = AlumnoActividad.new(alumno_actividad_params)

    respond_to do |format|
      if @alumno_actividad.save
        format.html { redirect_to @alumno_actividad, notice: 'Alumno actividad was successfully created.' }
        format.json { render :show, status: :created, location: @alumno_actividad }
      else
        format.html { render :new }
        format.json { render json: @alumno_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumno_actividads/1
  # PATCH/PUT /alumno_actividads/1.json
  def update
    respond_to do |format|
      if @alumno_actividad.update(alumno_actividad_params)
        format.html { redirect_to @alumno_actividad, notice: 'Alumno actividad was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumno_actividad }
      else
        format.html { render :edit }
        format.json { render json: @alumno_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumno_actividads/1
  # DELETE /alumno_actividads/1.json
  def destroy
    @alumno_actividad.destroy
    respond_to do |format|
      format.html { redirect_to alumno_actividads_url, notice: 'Alumno actividad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno_actividad
      @alumno_actividad = AlumnoActividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumno_actividad_params
      params.require(:alumno_actividad).permit(:alumno_id, :actividadinstructor_id)
    end
end
