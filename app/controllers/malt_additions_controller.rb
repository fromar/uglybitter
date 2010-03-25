class MaltAdditionsController < ApplicationController
  # GET /malt_additions
  # GET /malt_additions.xml
  def index
    @malt_additions = MaltAddition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @malt_additions }
    end
  end

  # GET /malt_additions/1
  # GET /malt_additions/1.xml
  def show
    @malt_addition = MaltAddition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @malt_addition }
    end
  end

  # GET /malt_additions/new
  # GET /malt_additions/new.xml
  def new
    @malt_addition = MaltAddition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @malt_addition }
    end
  end

  # GET /malt_additions/1/edit
  def edit
    @malt_addition = MaltAddition.find(params[:id])
  end

  # POST /malt_additions
  # POST /malt_additions.xml
  def create
    @malt_addition = MaltAddition.new(params[:malt_addition])

    respond_to do |format|
      if @malt_addition.save
        flash[:notice] = 'MaltAddition was successfully created.'
        format.html { redirect_to(@malt_addition) }
        format.xml  { render :xml => @malt_addition, :status => :created, :location => @malt_addition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @malt_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /malt_additions/1
  # PUT /malt_additions/1.xml
  def update
    @malt_addition = MaltAddition.find(params[:id])

    respond_to do |format|
      if @malt_addition.update_attributes(params[:malt_addition])
        flash[:notice] = 'MaltAddition was successfully updated.'
        format.html { redirect_to(@malt_addition) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @malt_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /malt_additions/1
  # DELETE /malt_additions/1.xml
  def destroy
    @malt_addition = MaltAddition.find(params[:id])
    @malt_addition.destroy

    respond_to do |format|
      format.html { redirect_to(malt_additions_url) }
      format.xml  { head :ok }
    end
  end
end
