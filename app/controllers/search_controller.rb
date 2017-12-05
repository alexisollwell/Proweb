class SearchController < ApplicationController
  
  def create
  	palabra = "%#{params[:keyword]}%"

  	@profesors = Profesor.where("nombre LIKE ? OR ap_pat LIKE ? OR ap_mat LIKE ?",palabra,palabra,palabra)
    
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json {render json: @profesors}
      format.js
    end
  end

   def searchmateria
  	palabra = "%#{params[:keywordm]}%"

  	@materia = Materium.where("nombre LIKE ? ",palabra)
    
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json {render json: @materia}
      format.js
    end
  end

end
