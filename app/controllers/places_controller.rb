class PlacesController < ApplicationController

  def index
    @places = ["United States", "Mexico", "Morocco"]
  end

  def new
    @place = Place.all
  end


end
