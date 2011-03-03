class SorteosController < ApplicationController
  before_filter :authenticate_usuario!
  load_and_authorize_resource
  # GET /sorteos
  # GET /sorteos.xml
  def index
    @sorteos = Sorteo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sorteos }
    end
  end

  # GET /sorteos/1
  # GET /sorteos/1.xml
  def show
    @sorteo = Sorteo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sorteo }
    end
  end

  # GET /sorteos/new
  # GET /sorteos/new.xml
  def new
    @sorteo = Sorteo.new
    3.times {@block = @sorteo.blocks.build}
    @sorteo.build_premio
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sorteo }
    end
  end

  # GET /sorteos/1/edit
  def edit
    @sorteo = Sorteo.find(params[:id])
  end

  # POST /sorteos
  # POST /sorteos.xml
  def create
    @sorteo = Sorteo.new(params[:sorteo])
    
    respond_to do |format|
      if @sorteo.save
        format.html { redirect_to(@sorteo, :notice => 'Sorteo was successfully created.') }
        format.xml  { render :xml => @sorteo, :status => :created, :location => @sorteo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sorteo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sorteos/1
  # PUT /sorteos/1.xml
  def update
    @sorteo = Sorteo.find(params[:id])

    respond_to do |format|
      if @sorteo.update_attributes(params[:sorteo])
        format.html { redirect_to(@sorteo, :notice => 'Sorteo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sorteo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sorteos/1
  # DELETE /sorteos/1.xml
  def destroy
    @sorteo = Sorteo.find(params[:id])
    @sorteo.destroy

    respond_to do |format|
      format.html { redirect_to(sorteos_url) }
      format.xml  { head :ok }
    end
  end
end
