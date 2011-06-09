class Cliente::StoresController < Cliente::ClienteController

  before_filter :load_resources, :only => %w(new create edit update)


  def index
    @stores = Store.all
    respond_with @stores
  end


  def show
    @store = Store.find(params[:id])
    respond_with @store
  end


  def new
    @store = Store.new()
    respond_with @store
  end

  def edit
    @store = Store.find(params[:id])
  end


  def create
    @store = Store.new(params[:store])

    flash[:notice] = 'store was successfully created.' if @store.save
    respond_with @store
  end

  def update
    @store = Store.find(params[:id])

    flash[:notice] = 'store was successfully updated.' if @store.update_attributes(params[:store])
    respond_with @store
  end


  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    respond_with @store
  end

protected

  def load_resources
    @users = User.all
  end
end

