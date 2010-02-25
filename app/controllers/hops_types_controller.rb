class HopsTypesController < ApplicationController
  # GET /hops_types
  # GET /hops_types.xml
  def index
    @hops_types = HopsType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hops_types }
    end
  end

  # GET /hops_types/1
  # GET /hops_types/1.xml
  def show
    @hops_type = HopsType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hops_type }
    end
  end

  # GET /hops_types/new
  # GET /hops_types/new.xml
  def new
    @hops_type = HopsType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hops_type }
    end
  end

  # GET /hops_types/1/edit
  def edit
    @hops_type = HopsType.find(params[:id])
  end

  # POST /hops_types
  # POST /hops_types.xml
  def create
    @hops_type = HopsType.new(params[:hops_type])

    respond_to do |format|
      if @hops_type.save
        flash[:notice] = 'HopsType was successfully created.'
        format.html { redirect_to(@hops_type) }
        format.xml  { render :xml => @hops_type, :status => :created, :location => @hops_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hops_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hops_types/1
  # PUT /hops_types/1.xml
  def update
    @hops_type = HopsType.find(params[:id])

    respond_to do |format|
      if @hops_type.update_attributes(params[:hops_type])
        flash[:notice] = 'HopsType was successfully updated.'
        format.html { redirect_to(@hops_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hops_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hops_types/1
  # DELETE /hops_types/1.xml
  def destroy
    @hops_type = HopsType.find(params[:id])
    @hops_type.destroy

    respond_to do |format|
      format.html { redirect_to(hops_types_url) }
      format.xml  { head :ok }
    end
  end
end
