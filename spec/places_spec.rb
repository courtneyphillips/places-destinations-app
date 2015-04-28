require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe('#destination') do
    it("lets you list a travel destination") do
      test_vacation = Place.new("Munich, Germany")
      expect(test_vacation.destination()).to(eq("Munich, Germany"))
    end
  end

  describe(".all_places") do
    it("is empty at first") do
      expect(Place.all_places()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a travel destination for later recall") do
    test_vacation = Place.new("Detroit, Michigan")
    test_vacation.save()
    expect(Place.all_places()).to(eq([test_vacation]))
    end

    it("saves a travel destination for later recall") do
      test_vacation = Place.new("America")
      test_vacation.save()
      expect(Place.all_places()).to(eq([test_vacation]))
    end
  end

  describe('.clear') do
    it("clears the list of all places after each pass") do
    test_vacation = Place.new("Disney World").save()
    Place.clear()
    expect(Place.all_places()).to(eq([]))
    end
  end

end
