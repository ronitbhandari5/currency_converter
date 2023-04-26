require 'money'
# require './mod'
require_relative 'mod'
require 'colorize'


class Convert 
include Xe

puts "Choose your currency type --".colorize(:yellow)
puts "1)  INR ".colorize(:yellow)
puts "2)  USD ".colorize(:yellow)
puts "3)  Euro".colorize(:yellow)
puts "4)  JPY".colorize(:yellow)
puts "5)  pound".colorize(:yellow)
current_curr = gets.chomp.upcase
puts "Enter the amount you want to convert : ".colorize(:green)
amount=gets.to_i
puts "Choose your target currency : ".colorize(:blue)
puts "1)  INR ".colorize(:blue)
puts "2)  USD ".colorize(:blue)
puts "3)  Euro".colorize(:blue)
puts "4)  JPY".colorize(:blue)
puts "5)  pound".colorize(:blue)
convert_curr = gets.chomp.upcase
obj = Convert.new 
obj.currencyconvert(amount,current_curr,convert_curr)

end

