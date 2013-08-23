class PagesController < ApplicationController

  def home
  	 @documentos = Documento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documentos }
    end
  end

end
