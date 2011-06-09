class Admin::PersondatasController < Admin::AdminController

  before_filter :load_resources, :only => %w(new create edit update)

  def index
    @persondatas = Persondata.all

    respond_with @persondatas
  end

  def show
    @persondata = Persondata.find(params[:id])

    respond_with @persondata
  end

  def new
    @persondata = Persondata.new

    respond_with @persondata
  end

  def edit
    @persondata = Persondata.find(params[:id])
  end

  def create
    @persondata = Persondata.new(params[:persondata])

    flash[:notice] = "Persondata was successfully created." if @persondata.save
    respond_with @persondata
  end

  def update
    @persondata = Persondata.find(params[:id])

    flash[:notice] = "Persondata was successfully updated." if @persondata.update_attributes(params[:persondata])
    respond_with @persondata
  end

  # DELETE /persondatas/1
  # DELETE /persondatas/1.xml
  def destroy
    @persondata = Persondata.find(params[:id])
    @persondata.destroy

    respond_with @persondata
  end

protected
  def load_resources
    @people = Person.all
  end
end

