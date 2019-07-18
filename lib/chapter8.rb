module Loggable
  # private
  def log(text)
    puts "[LOG] #{text}"
  end

  module_function :log
end

class Product
  include Loggable
  # extend Loggable

  # log 'Defined Product class.'

  def title
    log 'title is called.'
    puts 'A great movie'
  end

  def self.create_products(names)
    log 'crate_products is called.'
  end

end

class User
  include Loggable

  def name
    log 'name is called.'
    puts 'Alice'
  end

end

Loggable.log('hello')
product = Product.new
puts product.title
Math.sqrt(2)

# user = User.new
# user.name

# Product.create_products([])
# Product.log('hello')

# puts Object.include?(Kernel)
