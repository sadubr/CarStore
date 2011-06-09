class Admin::StoredatasController < Admin::AdminController

  before_filter :load_resources, :only => %w(new create edit update)


  def index
    @storedatas = Storedata.all

    respond_with @storedatas
  end

  def show
    @storedata = Storedata.find(params[:id])
    respond_with @storedatas
  end

  def new
    @storedata = Storedata.new
    respond_with @storedata
  end

  def edit
    @storedata = Storedata.find(params[:id])
  end


  def create
    @storedata = Storedata.new(params[:storedata])

    flash[:notice] = "Storedata was successfuly created ." if @storedata.save
    respond_with @storedata

  end

  # PUT /storedatas/1
  # PUT /storedatas/1.xml
  def update
    @storedata = Storedata.find(params[:id])

    flash[:notice] = "Storedata was successfuly created ." if @storedata.update_attributes(params[:storedata])
    respond_with @storedata
  end

  # DELETE /storedatas/1
  # DELETE /storedatas/1.xml
  def destroy
    @storedata = Storedata.find(params[:id])
    @storedata.destroy

    respond_with @storedata
  end

protected

  def load_resources
    @stores = Store.all
  end
end

