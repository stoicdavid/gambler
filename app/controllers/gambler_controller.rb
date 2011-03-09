class GamblerController < ApplicationController
load_and_authorize_resource
  def index
    @sorteos = Sorteo.all
    if usuario_signed_in?
      @blocks ||= current_usuario.blocks
    end
  end
  
end
