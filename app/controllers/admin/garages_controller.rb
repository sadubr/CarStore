class Admin::GaragesController < Admin::AdminController

  before_filter :load_resources, :only => %w(new create edit update)

  def index
    @garages = Garage.all

    respond_with @garages
  end

  def show
    @garage = Garage.find(params[:id])

    respond_with @garage
  end

  def new
    @garage = Garage.new
    respond_with @garage
  end


  def edit
    @garage = Garage.find(params[:id])
  end


  def create
    @garage = Garage.new(params[:garage])

    flash[:notice] = "Garage was successfully created." if @garage.save
    respond_with @garage
  end

  def update
    @garage = Garage.find(params[:id])

    flash[:notice] = "Garage was successfully update." if @garage.update_attributes(params[:garage])
    respond_with @garage
  end

  # DELETE /garages/1
  # DELETE /garages/1.xml
  def destroy
    @garage = Garage.find(params[:id])
    @garage.destroy

    respond_with @garage
  end

protected

  def load_resources
    @services = Service.all
  end
end

