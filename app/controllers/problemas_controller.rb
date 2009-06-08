class ProblemasController < ApplicationController
  # GET /problemas
  # GET /problemas.xml
  def index
    @problemas = Problema.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @problemas }
    end
  end

  # GET /problemas/1
  # GET /problemas/1.xml
  def show
    @problema = Problema.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @problema }
    end
  end

  # GET /problemas/new
  # GET /problemas/new.xml
  def new
    @problema = Problema.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @problema }
    end
  end

  # GET /problemas/1/edit
  def edit
    @problema = Problema.find(params[:id])
  end

  # POST /problemas
  # POST /problemas.xml
  def create
    @problema = Problema.new(params[:problema])

    respond_to do |format|
      if @problema.save
        flash[:notice] = 'Problema was successfully created.'
        format.html { redirect_to(@problema) }
        format.xml  { render :xml => @problema, :status => :created, :location => @problema }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @problema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /problemas/1
  # PUT /problemas/1.xml
  def update
    @problema = Problema.find(params[:id])

    respond_to do |format|
      if @problema.update_attributes(params[:problema])
        flash[:notice] = 'Problema was successfully updated.'
        format.html { redirect_to(@problema) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @problema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /problemas/1
  # DELETE /problemas/1.xml
  def destroy
    @problema = Problema.find(params[:id])
    @problema.destroy

    respond_to do |format|
      format.html { redirect_to(problemas_url) }
      format.xml  { head :ok }
    end
  end
end
