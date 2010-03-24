class AdjunctTypesController < ApplicationController
  # GET /adjunct_types
  # GET /adjunct_types.xml
  def index
    @adjunct_types = AdjunctType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adjunct_types }
    end
  end

  # GET /adjunct_types/1
  # GET /adjunct_types/1.xml
  def show
    @adjunct_type = AdjunctType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adjunct_type }
    end
  end

  # GET /adjunct_types/new
  # GET /adjunct_types/new.xml
  def new
    @adjunct_type = AdjunctType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adjunct_type }
    end
  end

  # GET /adjunct_types/1/edit
  def edit
    @adjunct_type = AdjunctType.find(params[:id])
  end

  # POST /adjunct_types
  # POST /adjunct_types.xml
  def create
    @adjunct_type = AdjunctType.new(params[:adjunct_type])

    respond_to do |format|
      if @adjunct_type.save
        flash[:notice] = 'AdjunctType was successfully created.'
        format.html { redirect_to(@adjunct_type) }
        format.xml  { render :xml => @adjunct_type, :status => :created, :location => @adjunct_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adjunct_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adjunct_types/1
  # PUT /adjunct_types/1.xml
  def update
    @adjunct_type = AdjunctType.find(params[:id])

    respond_to do |format|
      if @adjunct_type.update_attributes(params[:adjunct_type])
        flash[:notice] = 'AdjunctType was successfully updated.'
        format.html { redirect_to(@adjunct_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adjunct_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adjunct_types/1
  # DELETE /adjunct_types/1.xml
  def destroy
    @adjunct_type = AdjunctType.find(params[:id])
    @adjunct_type.destroy

    respond_to do |format|
      format.html { redirect_to(adjunct_types_url) }
      format.xml  { head :ok }
    end
  end
end
