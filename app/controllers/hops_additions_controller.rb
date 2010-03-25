class HopsAdditionsController < ApplicationController
  # GET /hops_additions
  # GET /hops_additions.xml
  def index
    @hops_additions = HopsAddition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hops_additions }
    end
  end

  # GET /hops_additions/1
  # GET /hops_additions/1.xml
  def show
    @hops_addition = HopsAddition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hops_addition }
    end
  end

  # GET /hops_additions/new
  # GET /hops_additions/new.xml
  def new
    @hops_addition = HopsAddition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hops_addition }
    end
  end

  # GET /hops_additions/1/edit
  def edit
    @hops_addition = HopsAddition.find(params[:id])
  end

  # POST /hops_additions
  # POST /hops_additions.xml
  def create
    @hops_addition = HopsAddition.new(params[:hops_addition])

    respond_to do |format|
      if @hops_addition.save
        flash[:notice] = 'HopsAddition was successfully created.'
        format.html { redirect_to(@hops_addition) }
        format.xml  { render :xml => @hops_addition, :status => :created, :location => @hops_addition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hops_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hops_additions/1
  # PUT /hops_additions/1.xml
  def update
    @hops_addition = HopsAddition.find(params[:id])

    respond_to do |format|
      if @hops_addition.update_attributes(params[:hops_addition])
        flash[:notice] = 'HopsAddition was successfully updated.'
        format.html { redirect_to(@hops_addition) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hops_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hops_additions/1
  # DELETE /hops_additions/1.xml
  def destroy
    @hops_addition = HopsAddition.find(params[:id])
    @hops_addition.destroy

    respond_to do |format|
      format.html { redirect_to(hops_additions_url) }
      format.xml  { head :ok }
    end
  end
end
