class PremiosController < ApplicationController
  # GET /premios
  # GET /premios.xml
  def index
    @premios = Premio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @premios }
    end
  end

  # GET /premios/1
  # GET /premios/1.xml
  def show
    @premio = Premio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @premio }
    end
  end

  # GET /premios/new
  # GET /premios/new.xml
  def new
    @premio = Premio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @premio }
    end
  end

  # GET /premios/1/edit
  def edit
    @premio = Premio.find(params[:id])
  end

  # POST /premios
  # POST /premios.xml
  def create
    @premio = Premio.new(params[:premio])

    respond_to do |format|
      if @premio.save
        format.html { redirect_to(@premio, :notice => 'Premio was successfully created.') }
        format.xml  { render :xml => @premio, :status => :created, :location => @premio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @premio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /premios/1
  # PUT /premios/1.xml
  def update
    @premio = Premio.find(params[:id])

    respond_to do |format|
      if @premio.update_attributes(params[:premio])
        format.html { redirect_to(@premio, :notice => 'Premio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @premio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /premios/1
  # DELETE /premios/1.xml
  def destroy
    @premio = Premio.find(params[:id])
    @premio.destroy

    respond_to do |format|
      format.html { redirect_to(premios_url) }
      format.xml  { head :ok }
    end
  end
end
