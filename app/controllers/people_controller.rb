class PeopleController < ApplicationController


  before_filter :load_resources, :only => %w(new create edit update)


  def index
    @people = Person.all

    respond_with @people
  end

  def show
    @person = Person.find(params[:id])

    respond_with @person
  end

  def new
    @person = Person.new

    respond_with @person
  end

  def edit
    @person = Person.find(params[:id])
  end


  def create
    @person = Person.new(params[:person])

    flash[:notice] = "Person was successfully created." if @person.save
    respond_with @person
  end

  def update
    @person = Person.find(params[:id])

    flash[:notice] = "Person was successfully Update." if @person.update_attributes(params[:person])
    respond_with @person
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_with @person
  end

protected

  def load_resources
    @users = User.all
  end
end

