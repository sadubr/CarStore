class AccessoriesController < ApplicationController

  before_filter :load_resources, :only => %w(new create edit update)


  def index
    @accessories = Accessory.all

    respond_with @accessories
  end

  def show
    @accessory = Accessory.find(params[:id])

    respond_with @accessory
  end

  def new
    @accessory = Accessory.new

    respond_with @accessory
  end

  def edit
    @accessory = Accessory.find(params[:id])
  end

  def create
    @accessory = Accessory.new(params[:accessory])

    flash[:notice] = "Accessory was successfully created." if @accessory.save
    respond_with @accessory

  end

  # PUT /accessories/1
  # PUT /accessories/1.xml
  def update
    @accessory = Accessory.find(params[:id])

    flash[:notice] = "Accessory was successfully update." if @accessory.update_attributes(params[:accessory])
    respond_with @accessory
  end

  # DELETE /accessories/1
  # DELETE /accessories/1.xml
  def destroy
    @accessory = Accessory.find(params[:id])
    @accessory.destroy

    respond_with @accessory
  end

protected

  def load_resources
    @services = Service.all
  end
end

