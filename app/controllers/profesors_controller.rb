class ProfesorsController < ApplicationController
  
#estos metodos si sirven pero chocan con las rutas del devise
#ejemplo: para ir al perfil de un profe es localhost:3000/profesors/3
#osea que espera un id despues del profesor/
#pero cuando inicias sesion (localhost:3000/sign_in) marca el error
  def index
  	@profesors = Profesor.all
  end

  def show
  	@profesor = Profesor.find(params[:id])	
  end


end
