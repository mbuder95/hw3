class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @places = Place.find_by({"id" => params["id"]})
    @entries= Entry.where({"places_id" => @places["id"]})
  end
end