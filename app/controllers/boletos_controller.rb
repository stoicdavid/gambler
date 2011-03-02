class BoletosController < ApplicationController
  load_and_authorize_resource
  # GET /boletos
  # GET /boletos.xml
  def index
    @boletos = Boleto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boletos }
    end
  end

  # GET /boletos/1
  # GET /boletos/1.xml
  def show
    @boleto = Boleto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boleto }
    end
  end

  # GET /boletos/new
  # GET /boletos/new.xml
  def new
    @boleto = Boleto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boleto }
    end
  end

  # GET /boletos/1/edit
  def edit
    @boleto = Boleto.find(params[:id])
  end

  # POST /boletos
  # POST /boletos.xml
  def create
    @boleto = Boleto.new(params[:boleto])

    respond_to do |format|
      if @boleto.save
        format.html { redirect_to(@boleto, :notice => 'Boleto was successfully created.') }
        format.xml  { render :xml => @boleto, :status => :created, :location => @boleto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boleto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boletos/1
  # PUT /boletos/1.xml
  def update
    @boleto = Boleto.find(params[:id])

    respond_to do |format|
      if @boleto.update_attributes(params[:boleto])
        format.html { redirect_to(@boleto, :notice => 'Boleto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boleto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boletos/1
  # DELETE /boletos/1.xml
  def destroy
    @boleto = Boleto.find(params[:id])
    @boleto.destroy

    respond_to do |format|
      format.html { redirect_to(boletos_url) }
      format.xml  { head :ok }
    end
  end
end
