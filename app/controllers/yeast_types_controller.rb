class YeastTypesController < ApplicationController
  # GET /yeast_types
  # GET /yeast_types.xml
  def index
    @yeast_types = YeastType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @yeast_types }
    end
  end

  # GET /yeast_types/1
  # GET /yeast_types/1.xml
  def show
    @yeast_type = YeastType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @yeast_type }
    end
  end

  # GET /yeast_types/new
  # GET /yeast_types/new.xml
  def new
    @yeast_type = YeastType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @yeast_type }
    end
  end

  # GET /yeast_types/1/edit
  def edit
    @yeast_type = YeastType.find(params[:id])
  end

  # POST /yeast_types
  # POST /yeast_types.xml
  def create
    @yeast_type = YeastType.new(params[:yeast_type])

    respond_to do |format|
      if @yeast_type.save
        flash[:notice] = 'YeastType was successfully created.'
        format.html { redirect_to(@yeast_type) }
        format.xml  { render :xml => @yeast_type, :status => :created, :location => @yeast_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @yeast_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /yeast_types/1
  # PUT /yeast_types/1.xml
  def update
    @yeast_type = YeastType.find(params[:id])

    respond_to do |format|
      if @yeast_type.update_attributes(params[:yeast_type])
        flash[:notice] = 'YeastType was successfully updated.'
        format.html { redirect_to(@yeast_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @yeast_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /yeast_types/1
  # DELETE /yeast_types/1.xml
  def destroy
    @yeast_type = YeastType.find(params[:id])
    @yeast_type.destroy

    respond_to do |format|
      format.html { redirect_to(yeast_types_url) }
      format.xml  { head :ok }
    end
  end
end
