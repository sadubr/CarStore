class GaragedatasController < ApplicationController

  before_filter :load_resources, :only => %w(new create edit update)

  def index
    @garagedatas = Garagedata.all

    respond_with @garagedatas
  end

  def show
    @garagedata = Garagedata.find(params[:id])

    respond_with @garagedata
  end

  def new
    @garagedata = Garagedata.new

    respond_with @garagedata
  end

  def edit
    @garagedata = Garagedata.find(params[:id])
  end

  def create
    @garagedata = Garagedata.new(params[:garagedata])

    flash[:notice] = "Garagedata was successfully created." if @garagedata.save
    respond_with @garagedata

  end

  def update
    @garagedata = Garagedata.find(params[:id])

    flash[:notice] = "Garagedata was successfully update." if @garagedata.update_attributes(params[:garagedata])
    respond_with @garagedata
  end

  def destroy
    @garagedata = Garagedata.find(params[:id])
    @garagedata.destroy

    respond_with @garagedata
  end

protected

  def load_resources
    @garages = Garage.all
  end
end

