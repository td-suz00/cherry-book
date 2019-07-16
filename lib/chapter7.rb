class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{@name}, price: #{@price}"
  end
end

class DVD < Product
  attr_reader :runnning_time

  def initialize(name, price, runnning_time)
    super(name, price)
    @runnning_time = runnning_time
  end

  def to_s
    "#{super}, runnning_time: #{@runnning_time}"
  end

end

product = Product.new('A great movie', 1000)
puts product.to_s

dvd = DVD.new('A great movie', 1000, 120)
puts dvd.to_s