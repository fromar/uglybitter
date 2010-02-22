class BrewersController < ApplicationController
  # GET /brewers
  # GET /brewers.xml
  def index
    @brewers = Brewer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @brewers }
    end
  end

  # GET /brewers/1
  # GET /brewers/1.xml
  def show
    @brewer = Brewer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brewer }
    end
  end

  # GET /brewers/new
  # GET /brewers/new.xml
  def new
    @brewer = Brewer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @brewer }
    end
  end

  # GET /brewers/1/edit
  def edit
    @brewer = Brewer.find(params[:id])
  end

  # POST /brewers
  # POST /brewers.xml
  def create
    @brewer = Brewer.new(params[:brewer])

    respond_to do |format|
      if @brewer.save
        flash[:notice] = 'Brewer was successfully created.'
        format.html { redirect_to(@brewer) }
        format.xml  { render :xml => @brewer, :status => :created, :location => @brewer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @brewer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /brewers/1
  # PUT /brewers/1.xml
  def update
    @brewer = Brewer.find(params[:id])

    respond_to do |format|
      if @brewer.update_attributes(params[:brewer])
        flash[:notice] = 'Brewer was successfully updated.'
        format.html { redirect_to(@brewer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @brewer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /brewers/1
  # DELETE /brewers/1.xml
  def destroy
    @brewer = Brewer.find(params[:id])
    @brewer.destroy

    respond_to do |format|
      format.html { redirect_to(brewers_url) }
      format.xml  { head :ok }
    end
  end
end
