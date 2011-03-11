class GamblerController < ApplicationController
load_and_authorize_resource
  def index
    @sorteos = Sorteo.all
  end
  
end
