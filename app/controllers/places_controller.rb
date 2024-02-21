class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entries= Entry.where({"place_id" => @place["id"]})
  end

  def new
  end

  def create
    @place = Place.new
  # assign user-entered form data to place's columns
    @place["name"] = params["name"]

  # save place row
    @place.save

  # redirect user
    redirect_to "/places"
  end
end