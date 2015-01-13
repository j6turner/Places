require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @all_places = Place.all()
  erb(:index)
end

post("/places") do
  locale = params.fetch("locale")
  place = Place.new(locale)
  place.save()
  erb(:success)
end
