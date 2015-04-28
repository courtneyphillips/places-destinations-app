require('rspec')
require('places')

describe(Place) do
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
  end

end
