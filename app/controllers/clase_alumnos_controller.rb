class ClaseAlumnosController < ApplicationController
  before_action :set_clase_alumno, only: [:show, :edit, :update, :destroy]

  # GET /clase_alumnos
  # GET /clase_alumnos.json
  def index
    @clase_alumnos = ClaseAlumno.all
  end

  # GET /clase_alumnos/1
  # GET /clase_alumnos/1.json
  def show
  end

  # GET /clase_alumnos/new
  def new
    @clase_alumno = ClaseAlumno.new
    @id_guardar = params[:clase_comment]
  end

  # GET /clase_alumnos/1/edit
  def edit
  end

  # POST /clase_alumnos
  # POST /clase_alumnos.json
  def create
    @clase_alumno = ClaseAlumno.new(clase_alumno_params)

    respond_to do |format|
      if @clase_alumno.save
        format.html { redirect_to root_path, notice: 'Clase alumno was successfully created.' }
        format.json { render :show, status: :created, location: @clase_alumno }
      else
        format.html { render :new }
        format.json { render json: @clase_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clase_alumnos/1
  # PATCH/PUT /clase_alumnos/1.json
  def update
    respond_to do |format|
      if @clase_alumno.update(clase_alumno_params)
        format.html { redirect_to @clase_alumno, notice: 'Clase alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @clase_alumno }
      else
        format.html { render :edit }
        format.json { render json: @clase_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clase_alumnos/1
  # DELETE /clase_alumnos/1.json
  def destroy
    @clase_alumno.destroy
    respond_to do |format|
      format.html { redirect_to clase_alumnos_url, notice: 'Clase alumno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clase_alumno
      @clase_alumno = ClaseAlumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clase_alumno_params
      params.require(:clase_alumno).permit(:alumno_id, :clase_id, :comentario, :calificacion)
    end
end
