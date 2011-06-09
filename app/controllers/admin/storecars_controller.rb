class Admin::StorecarsController < Admin::AdminController

  before_filter :load_resources, :only => %w(new create edit update)

  # GET /storecars
  # GET /storecars.xml
  def index
    @storecars = Storecar.all

    respond_with @storecars
  end


  def show
    @storecar = Storecar.find(params[:id])

    respond_with @storecar
  end

  def new
    @storecar = Storecar.new

    respond_with @storecar
  end


  def edit
    @storecar = Storecar.find(params[:id])
  end

  def create
    @storecar = Storecar.new(params[:storecar])

    flash[:notice] = "Storecar was successfuly updated ." if @storecar.save
    respond_with @storecar, :location => storecars_path
  end

  def update
    @storecar = Storecar.find(params[:id])

    flash[:notice] = "Storecar was successfuly updated ." if @storecar.update_attributes(params[:storecar])
    respond_with @storecar
  end

  def destroy
    @storecar = Storecar.find(params[:id])
    @storecar.destroy

    respond_with @storecar
  end

protected

  def load_resources
    @stores = Store.all
  end
end

