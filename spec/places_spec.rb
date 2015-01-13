require('rspec')
require('places')

describe(Place) do

  before() do
    Place.clear()
  end

  describe("#locale") do
    it("allows you to give it a locale representing a place visited") do
      test_place = Place.new("Greece")
      expect(test_place.locale()).to(eq("Greece"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Italy")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("Holland").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
