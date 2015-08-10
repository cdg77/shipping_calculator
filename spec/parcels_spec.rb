require('rspec')
require('parcels')

describe ('Parcel') do
  describe ('#volume') do
    it('takes the dimensions of a parcel returns the volume') do
      new_parcel = Parcel.new(2, 4, 5)
      expect(new_parcel.volume()).to(eq(40))
    end 
  end

end
