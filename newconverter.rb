require 'money'
# require './mod'
require_relative 'mod'
require 'colorize'


class Convert 
include Xe

puts "Choose your currency type --".colorize(:yellow)
puts "1)  Indian(INR) ".colorize(:yellow)
puts "2)  United states(USD) ".colorize(:yellow)
puts "3)  Europe(EUR)".colorize(:yellow)
puts "4)  Japanese Yen(JPY)".colorize(:yellow)
puts "5)  Britain Pound(GBP)".colorize(:yellow)
current_curr = gets.chomp.upcase
puts "Enter the amount you want to convert : ".colorize(:green)
amount=gets.to_i
puts "Choose your target currency : ".colorize(:blue)
puts "1)  Indian(INR) ".colorize(:blue)
puts "2)  United states(USD) ".colorize(:blue)
puts "3)  Europe(EUR)".colorize(:blue)
puts "4)  Japanese Yen(JPY)".colorize(:blue)
puts "5)  Britain Pound(GBP)".colorize(:blue)
convert_curr = gets.chomp.upcase
obj = Convert.new 
obj.currencyconvert(amount,current_curr,convert_curr)

end