class GoodPointsController < ApplicationController
  # GET /good_points
  # GET /good_points.json
  def index
    @good_points = GoodPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @good_points }
    end
  end

  # GET /good_points/1
  # GET /good_points/1.json
  def show
    @good_point = GoodPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @good_point }
    end
  end

  # GET /good_points/new
  # GET /good_points/new.json
  def new
    @good_point = GoodPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @good_point }
    end
  end

  # GET /good_points/1/edit
  def edit
    @good_point = GoodPoint.find(params[:id])
  end

  # POST /good_points
  # POST /good_points.json
  def create
    @good_point = GoodPoint.new(params[:good_point])

    respond_to do |format|
      if @good_point.save
        format.html { redirect_to @good_point, notice: 'Good point was successfully created.' }
        format.json { render json: @good_point, status: :created, location: @good_point }
      else
        format.html { render action: "new" }
        format.json { render json: @good_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /good_points/1
  # PUT /good_points/1.json
  def update
    @good_point = GoodPoint.find(params[:id])

    respond_to do |format|
      if @good_point.update_attributes(params[:good_point])
        format.html { redirect_to @good_point, notice: 'Good point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @good_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_points/1
  # DELETE /good_points/1.json
  def destroy
    @good_point = GoodPoint.find(params[:id])
    @good_point.destroy

    respond_to do |format|
      format.html { redirect_to good_points_url }
      format.json { head :no_content }
    end
  end
end
