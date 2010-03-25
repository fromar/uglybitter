class AdjunctAdditionsController < ApplicationController
  # GET /adjunct_additions
  # GET /adjunct_additions.xml
  def index
    @adjunct_additions = AdjunctAddition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adjunct_additions }
    end
  end

  # GET /adjunct_additions/1
  # GET /adjunct_additions/1.xml
  def show
    @adjunct_addition = AdjunctAddition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adjunct_addition }
    end
  end

  # GET /adjunct_additions/new
  # GET /adjunct_additions/new.xml
  def new
    @adjunct_addition = AdjunctAddition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adjunct_addition }
    end
  end

  # GET /adjunct_additions/1/edit
  def edit
    @adjunct_addition = AdjunctAddition.find(params[:id])
  end

  # POST /adjunct_additions
  # POST /adjunct_additions.xml
  def create
    @adjunct_addition = AdjunctAddition.new(params[:adjunct_addition])

    respond_to do |format|
      if @adjunct_addition.save
        flash[:notice] = 'AdjunctAddition was successfully created.'
        format.html { redirect_to(@adjunct_addition) }
        format.xml  { render :xml => @adjunct_addition, :status => :created, :location => @adjunct_addition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adjunct_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adjunct_additions/1
  # PUT /adjunct_additions/1.xml
  def update
    @adjunct_addition = AdjunctAddition.find(params[:id])

    respond_to do |format|
      if @adjunct_addition.update_attributes(params[:adjunct_addition])
        flash[:notice] = 'AdjunctAddition was successfully updated.'
        format.html { redirect_to(@adjunct_addition) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adjunct_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adjunct_additions/1
  # DELETE /adjunct_additions/1.xml
  def destroy
    @adjunct_addition = AdjunctAddition.find(params[:id])
    @adjunct_addition.destroy

    respond_to do |format|
      format.html { redirect_to(adjunct_additions_url) }
      format.xml  { head :ok }
    end
  end
end
