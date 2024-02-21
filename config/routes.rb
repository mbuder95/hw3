Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources "entries"
resources "places"
  # Defines the root path route ("/")

end
