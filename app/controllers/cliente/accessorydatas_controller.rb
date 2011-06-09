class Cliente::AccessorydatasController < Cliente::ClienteController


  before_filter :load_resources, :only => %w(new create edit update)

  def index
    @accessorydatas = Accessorydata.all

    respond_with @accessorydatas
  end

  def show
    @accessorydata = Accessorydata.find(params[:id])

    respond_with @accessorydata
  end

  def new
    @accessorydata = Accessorydata.new()
    respond_with @accessorydata
  end

  def edit
    @accessorydata = Accessorydata.find(params[:id])
  end

  def create
    @accessorydata = Accessorydata.new(params[:accessorydata])

    flash[:notice] = "Accessorydata was successfully created." if @accessorydata.save
    respond_with @accessorydata, cliente_accessorydatas_path

  end

  def update
    @accessorydata = Accessorydata.find(params[:id])

    flash[:notice] = "Accessorydata was successfully created." if @accessorydata.update_attributes(params[:accessorydata])
    respond_with @accessorydata, cliente_accessorydatas_path
  end

  # DELETE /accessorydatas/1
  # DELETE /accessorydatas/1.xml
  def destroy
    @accessorydata = Accessorydata.find(params[:id])
    @accessorydata.destroy

    respond_with @accessorydata
  end

protected

  def load_resources
    @accessories = Accessory.all
  end
end

