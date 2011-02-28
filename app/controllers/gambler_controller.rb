class GamblerController < ApplicationController
  skip_authorization_check :only => :index
  def index
    @sorteos = Sorteo.all
  end
  
end
