# puts 'start'
# module Greeter
#   def hello
#     puts 'hello'
#   end
# end

# begin
#   greeter = Greeter.new
# rescue
#   puts '続行！'
# end
# puts 'end'

def method_1
  puts 'method_1 start.'
  begin
    method_2
  rescue => e
    puts "エラークラス： #{e.class}"
    puts "エラーメッセージ： #{e.message}"
    puts "バックトレース -----"
    puts e.backtrace
    puts "-----"

  end
  puts 'method_1 end.'
end

def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end

def method_3
  puts 'method_3 start.'
  puts 1/0
  puts 'method_3 end.'
end

puts method_1

