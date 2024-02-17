class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entry= Entry.where({"places_id" => @place["id"]})
  end
end

def new
end

def create
  # start with a new place
  @place= Place.new

  # assign user-entered form data to place's columns
  @place["name"] = params["name"]

  # save place row
  @place.save

  # redirect user
  redirect_to "/places"
end