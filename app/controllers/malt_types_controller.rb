class MaltTypesController < ApplicationController
  # GET /malt_types
  # GET /malt_types.xml
  def index
    @malt_types = MaltType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @malt_types }
    end
  end

  # GET /malt_types/1
  # GET /malt_types/1.xml
  def show
    @malt_type = MaltType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @malt_type }
    end
  end

  # GET /malt_types/new
  # GET /malt_types/new.xml
  def new
    @malt_type = MaltType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @malt_type }
    end
  end

  # GET /malt_types/1/edit
  def edit
    @malt_type = MaltType.find(params[:id])
  end

  # POST /malt_types
  # POST /malt_types.xml
  def create
    @malt_type = MaltType.new(params[:malt_type])

    respond_to do |format|
      if @malt_type.save
        flash[:notice] = 'MaltType was successfully created.'
        format.html { redirect_to(@malt_type) }
        format.xml  { render :xml => @malt_type, :status => :created, :location => @malt_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @malt_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /malt_types/1
  # PUT /malt_types/1.xml
  def update
    @malt_type = MaltType.find(params[:id])

    respond_to do |format|
      if @malt_type.update_attributes(params[:malt_type])
        flash[:notice] = 'MaltType was successfully updated.'
        format.html { redirect_to(@malt_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @malt_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /malt_types/1
  # DELETE /malt_types/1.xml
  def destroy
    @malt_type = MaltType.find(params[:id])
    @malt_type.destroy

    respond_to do |format|
      format.html { redirect_to(malt_types_url) }
      format.xml  { head :ok }
    end
  end
end
