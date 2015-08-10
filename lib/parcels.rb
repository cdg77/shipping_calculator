class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end

  define_method(:volume) do
    volume = @length * @width * @height
    return volume
  end

end
