class PitchingYeastsController < ApplicationController
  # GET /pitching_yeasts
  # GET /pitching_yeasts.xml
  def index
    @pitching_yeasts = PitchingYeast.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pitching_yeasts }
    end
  end

  # GET /pitching_yeasts/1
  # GET /pitching_yeasts/1.xml
  def show
    @pitching_yeast = PitchingYeast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pitching_yeast }
    end
  end

  # GET /pitching_yeasts/new
  # GET /pitching_yeasts/new.xml
  def new
    @pitching_yeast = PitchingYeast.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pitching_yeast }
    end
  end

  # GET /pitching_yeasts/1/edit
  def edit
    @pitching_yeast = PitchingYeast.find(params[:id])
  end

  # POST /pitching_yeasts
  # POST /pitching_yeasts.xml
  def create
    @pitching_yeast = PitchingYeast.new(params[:pitching_yeast])

    respond_to do |format|
      if @pitching_yeast.save
        flash[:notice] = 'PitchingYeast was successfully created.'
        format.html { redirect_to(@pitching_yeast) }
        format.xml  { render :xml => @pitching_yeast, :status => :created, :location => @pitching_yeast }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pitching_yeast.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pitching_yeasts/1
  # PUT /pitching_yeasts/1.xml
  def update
    @pitching_yeast = PitchingYeast.find(params[:id])

    respond_to do |format|
      if @pitching_yeast.update_attributes(params[:pitching_yeast])
        flash[:notice] = 'PitchingYeast was successfully updated.'
        format.html { redirect_to(@pitching_yeast) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pitching_yeast.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pitching_yeasts/1
  # DELETE /pitching_yeasts/1.xml
  def destroy
    @pitching_yeast = PitchingYeast.find(params[:id])
    @pitching_yeast.destroy

    respond_to do |format|
      format.html { redirect_to(pitching_yeasts_url) }
      format.xml  { head :ok }
    end
  end
end
