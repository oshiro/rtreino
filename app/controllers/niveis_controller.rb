class NiveisController < ApplicationController
  # GET /niveis
  # GET /niveis.xml
  def index
    @niveis = Nivel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @niveis }
    end
  end

  # GET /niveis/1
  # GET /niveis/1.xml
  def show
    @nivel = Nivel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nivel }
    end
  end

  # GET /niveis/new
  # GET /niveis/new.xml
  def new
    @nivel = Nivel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nivel }
    end
  end

  # GET /niveis/1/edit
  def edit
    @nivel = Nivel.find(params[:id])
  end

  # POST /niveis
  # POST /niveis.xml
  def create
    @nivel = Nivel.new(params[:nivel])

    respond_to do |format|
      if @nivel.save
        flash[:notice] = 'Nivel was successfully created.'
        format.html { redirect_to(@nivel) }
        format.xml  { render :xml => @nivel, :status => :created, :location => @nivel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nivel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /niveis/1
  # PUT /niveis/1.xml
  def update
    @nivel = Nivel.find(params[:id])

    respond_to do |format|
      if @nivel.update_attributes(params[:nivel])
        flash[:notice] = 'Nivel was successfully updated.'
        format.html { redirect_to(@nivel) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nivel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /niveis/1
  # DELETE /niveis/1.xml
  def destroy
    @nivel = Nivel.find(params[:id])
    @nivel.destroy

    respond_to do |format|
      format.html { redirect_to(niveis_url) }
      format.xml  { head :ok }
    end
  end
end
