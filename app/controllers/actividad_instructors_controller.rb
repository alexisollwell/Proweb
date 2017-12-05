class ActividadInstructorsController < ApplicationController
  before_action :set_actividad_instructor, only: [:show, :edit, :update, :destroy]

  # GET /actividad_instructors
  # GET /actividad_instructors.json
  def index
    @actividad_instructors = ActividadInstructor.all
  end

  # GET /actividad_instructors/1
  # GET /actividad_instructors/1.json
  def show
  end

  # GET /actividad_instructors/new
  def new
    @actividad_instructor = ActividadInstructor.new
  end

  # GET /actividad_instructors/1/edit
  def edit
  end

  # POST /actividad_instructors
  # POST /actividad_instructors.json
  def create
    @actividad_instructor = ActividadInstructor.new(actividad_instructor_params)

    respond_to do |format|
      if @actividad_instructor.save
        format.html { redirect_to @actividad_instructor, notice: 'Actividad instructor was successfully created.' }
        format.json { render :show, status: :created, location: @actividad_instructor }
      else
        format.html { render :new }
        format.json { render json: @actividad_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividad_instructors/1
  # PATCH/PUT /actividad_instructors/1.json
  def update
    respond_to do |format|
      if @actividad_instructor.update(actividad_instructor_params)
        format.html { redirect_to @actividad_instructor, notice: 'Actividad instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actividad_instructor }
      else
        format.html { render :edit }
        format.json { render json: @actividad_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividad_instructors/1
  # DELETE /actividad_instructors/1.json
  def destroy
    @actividad_instructor.destroy
    respond_to do |format|
      format.html { redirect_to actividad_instructors_url, notice: 'Actividad instructor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad_instructor
      @actividad_instructor = ActividadInstructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividad_instructor_params
      params.require(:actividad_instructor).permit(:actividadExtra_id, :instructor_id, :horario, :lugar)
    end
end
