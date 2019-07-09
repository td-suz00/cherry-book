# a = [1, 2, 3, 4, 5, 6]
# a = a.map{|n|n*10}
# p a

# even_numbers = a.select{|n|n.even?}
# p even_numbers

# odd_numbers = a.reject{|n|n.even?}
# p odd_numbers

# sum = a.inject(0){|result, n| result + n}
# p sum

# p (1...5).to_a
# p [*1..5]

# numbers = []
# (1..10).step(2) {|n| numbers << n}
# p numbers

# a = [1, 2, 3, 4, 5]
# b = [6, 7, 8, 9, 10]
# p a[1, 3]
# p a[-1]
# p a.push(6,7,8)
# p a.concat(b)
# p a
# p b
# p a+b
# p a.push(*b)

# require "set"
# a = Set.new([1, 2, 3])
# b = Set.new([3, 4, 5])
# p a|b

# *e, f = 100, 200, 300
# p e
# p f

# def greeting(*names)
#   "#{names.join("と")}、こんにちは"
# end

# puts greeting("suzuki", "satou")

# p %w(big\ apple, small\ melon, banana)

# p Array.new(5){|n|n%10+1}

# dimensions = [
#   [10, 20],
#   [30, 40],
#   [50, 60]
# ]

# area = []
# dimensions.each do |length, width|
#   area << length*width
# end
# p area

# dimensions.each.with_index(1) do |(length, width), i|
#   area << "#{i} area:#{length*width}"
# end

# p area

# numbers = []
# 1.step(10, 2) {|n|numbers << n}
# p numbers

# numbers = [1, 2, 3, 4, 5]
# loop do
#   n =  numbers.sample
#   p n
#   break if n == 5
# end

# def calc_with_break
#   numbers = [1, 2, 3, 4, 5, 6]
#   target = nil
#   numbers.shuffle.each do |n|
#     target = n
#     break if n.even?
#   end
#   target*10
# end

# p calc_with_break

# numbers = [1, 2, 3, 4, 5, 6]
# numbers.each do |n|
#   next if n.even?
#   p n
# end

foods = %w(apple banana grape)
p foods
foods.each do |food|
  puts "#{food}は好きですか？ =>"
  answer = %w(yes no).sample
  puts answer
  redo if answer == "no"
end