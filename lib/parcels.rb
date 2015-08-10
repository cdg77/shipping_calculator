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

  define_method(:cost_to_ship) do |distance, weight|
    dimensions = self.volume * 0.03
    distance *= 0.05
    weight *= 0.04
    return (dimensions + distance + weight).round(2)
  end

end
