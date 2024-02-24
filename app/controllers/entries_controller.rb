class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @places = Place.find_by({"id" => @entry["place_id"]})
    # render entry/show view with details about Entry
  end

  def new
    # render view with new Place form
    @place= Place.find_by({ "id" => params["place_id"] })
  end

  def create
    # start with a new Company
    @entry = Entry.new
    # assign user-entered form data to Company's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]

    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    # save Company row
    @entry.save
   
    # redirect user
    redirect_to "/companies/#{@entry["place_id"]}"
  end

end