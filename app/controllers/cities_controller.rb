class CitiesController < ApplicationController

  def new
  end

  def create
  end

  def show
    @city = City.find params[:id]
  end

  def destroy
  end

end
