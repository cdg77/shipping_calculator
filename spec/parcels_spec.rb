require('rspec')
require('parcels')

describe ('Parcel') do
  describe ('#volume') do
    it('takes the dimensions of a parcel returns the volume') do
      new_parcel = Parcel.new(2, 4, 5)
      expect(new_parcel.volume()).to(eq(40))
    end
  end
  describe('#cost_to_ship') do
    it('takes the dimensions, weight, distance, and delivery speed of the parcel and returns a cost') do
      new_parcel = Parcel.new(2, 2.5, 2)
      expect(new_parcel.cost_to_ship(10, 10, "Same-Day")).to(eq(21.2))
    end
  end
end
