class GamblerController < ApplicationController
  
  def index
    @sorteos = Sorteo.all
  end
  
end
