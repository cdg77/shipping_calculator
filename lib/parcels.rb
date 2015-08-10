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

  define_method(:cost_to_ship) do |distance, weight, speed|
    dimensions = self.volume * 0.03
    distance *= 0.05
    weight *= 0.04
    if speed == "Same-Day"
      speed = 20
    elsif speed == "One-Day"
      speed = 15
    elsif speed == "Two-Day"
      speed = 10
    else
      speed = 5
    end
    return (dimensions + distance + weight + speed).round(2)
  end

end
