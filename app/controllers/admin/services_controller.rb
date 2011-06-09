class Admin::ServicesController < Admin::AdminController

  before_filter :load_resources, :only => %w(new create edit update)

  def index
    @services = Service.all

    respond_with @services
  end

  def show
    @service = Service.find(params[:id])

    respond_with @service
  end

  def new
    @service = Service.new

    respond_with @services
  end


  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(params[:service])

    flash[:notice] = "Service was successfully created." if @service.save
    respond_with @service
  end

  def update
    @service = Service.find(params[:id])

    flash[:notice] = "Service was successfully update." if @service.update_attributes(params[:service])
    respond_with @service
  end


  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_with @service
  end

protected

  def load_resources
    @users = User.all
  end
end

