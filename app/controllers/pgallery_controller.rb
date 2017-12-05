class PgalleryController < ApplicationController
  
  def show
  	@profesor = Profesor.find(params[:id])	
  end

  def index
  	@profesors = Profesor.all
  end

end
