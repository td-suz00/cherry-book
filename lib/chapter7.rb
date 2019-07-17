# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end

#   def to_s
#     "name: #{@name}, price: #{@price}"
#   end
# end

# class DVD < Product
#   attr_reader :runnning_time

#   def initialize(name, price, runnning_time)
#     super(name, price)
#     @runnning_time = runnning_time
#   end

#   # private
#   def to_s
#     "#{super}, runnning_time: #{@runnning_time}"
#   end

# end

# product = Product.new('A great movie', 1000)
# puts product.to_s

# dvd = DVD.new('A great movie', 1000, 120)
# puts dvd.to_s

# class User
#   def hello
#     "Hello, I am #{name}"
#   end

#   private
#   def name
#     'Alice'
#   end
# end

# class Daisuke < User
#   def hello
#     "name: #{name}"
#   end

#   def name
#     'daisuke'
#   end
# end

# user = Daisuke.new
# puts user.hello

class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected
  def weight
    @weight
  end
end

daisuke = User.new("daisuke", 90)
bob = User.new("Bob", 80)
puts daisuke.heavier_than?(bob)
puts daisuke.weight
