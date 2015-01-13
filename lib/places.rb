class Place

  @@all_places = []

  define_method(:initialize) do |locale|
    @locale = locale
  end

  define_method(:locale) do
    @locale
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end

end
