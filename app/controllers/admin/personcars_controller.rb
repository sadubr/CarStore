class Admin::PersoncarsController < Admin::AdminController

  before_filter :load_resources, :only => %w(new create edit update)
  # GET /personcars
  # GET /personcars.xml
  def index
    @personcars = Personcar.all

    respond_with @personcars
  end

  def show
    @personcar = Personcar.find(params[:id])

    respond_with @personcar
  end

  def new
    @personcar = Personcar.new

    respond_with @personcar
  end


  def edit
    @personcar = Personcar.find(params[:id])
  end

  def create
    @personcar = Personcar.new(params[:personcar])

    flash[:notice] = "Personcar was successfully created." if @personcar.save
    respond_with @personcar
  end

  def update
    @personcar = Personcar.find(params[:id])

    flash[:notice] = "Personcar was successfully created." if @personcar.update_attributes(params[:personcar])
    respond_with @personcar
  end


  def destroy
    @personcar = Personcar.find(params[:id])
    @personcar.destroy

    respond_with @personcar
  end

protected
  def load_resources
    @people = Person.all
  end
end

