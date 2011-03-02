class UsuariosController < ApplicationController
  load_and_authorize_resource
  def index
    
  end
  
  def show
    
  end
  
  def new
    @responsable = Usuario.find(params[:responsable_id])
    @usuario = Usuario.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usuario }
    end
  end
  
  def edit
    @usuario = Usuario.find(params[:id])
  end
  
  def create
    @responsable = Usuario.find(params[:responsable_id])
    @usuario = Usuario.new(params[:usuario])
    @usuario.responsable_id = @responsable.id
    respond_to do |format|
     if @usuario.save
       format.html { redirect_to(@usuario, :notice => 'Usuario creado') }
       format.xml  { render :xml => @usuario, :status => :created, :location => @usuario }
     else
       format.html { render :action => "new" }
       format.xml  { render :xml => @usuario.errors, :status => :unprocessable_entity }
     end
   end
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
