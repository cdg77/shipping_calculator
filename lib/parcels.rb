class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
  end

  define_method(:volume) do
    volume = @length * @width * @height
    return volume
  end

  define_method(:cost_to_ship) do |distance, weight, speed|
    dimensions = self.volume * 0.03
    distance = distance.to_i * 0.05
    weight = weight.to_i * 0.04
    if speed == "Same-Day"
      speed = 20
    elsif speed == "One-Day"
      speed = 15
    elsif speed == "Two-Day"
      speed = 10
    else
      speed = 5
    end
    total =  (dimensions + distance + weight + speed).round(2).to_s.split('.')
    if total[1].length == 2
      total.join('.')
    else
      total[1] += '0'
      total.join('.')
    end
  end
end
