class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @places = Place.find_by({"id" => params["id"]})
    @entries= Entry.where({"places_id" => @places["id"]})
  end
end

def new
end

def create
  # start with a new Company
  @places= Place.new

  # assign user-entered form data to Company's columns
  @places["name"] = params["name"]

  # save Company row
  @place.save

  # redirect user
  redirect_to "/places"
end