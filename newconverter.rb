require 'money'
# require './mod'
require_relative 'mod'
require 'colorize'


class Convert 
include Xe
  def display_value
        puts "------------------------------------------------------".colorize(:yellow)
        puts " Choose your current currency type --".colorize(:yellow)
        puts "1)  Indian            (INR)                                |  ".colorize(:yellow)
        puts "2)  United states     (USD)                                |  ".colorize(:yellow)
        puts "3)  Europe            (EUR)                                |  ".colorize(:yellow)
        puts "4)  Japanese Yen      (JPY)                                |  ".colorize(:yellow)
        puts "5)  Britain Pound     (GBP)                                |  ".colorize(:yellow)
        puts "------------------------------------------------------".colorize(:yellow)

        arr = ['INR','USD','EUR','JPY','GBP']

        # Handling Error
        begin
            current_curr = gets.chomp.upcase
        raise "You entered wrong currency code" unless arr.include?(current_curr)
        rescue
            puts " Enter the correct currency code in words example(inr,usd,eur,jpy,gbp): ".colorize(:light_green)
            retry 
        end
        #-------------------------------------------
        puts "------------------------------------------------------".colorize(:light_green)
        puts "Enter the amount you want to convert : ".colorize(:light_green)
        puts "------------------------------------------------------".colorize(:light_green)
        #-------------------------------------------
        begin
          amount=Float(gets)
        rescue ArgumentError 
          puts "Enter amount in numbers :".colorize(:light_green)
          retry
        end
        #---------------------------------------------

        puts "------------------------------------------------------".colorize(:blue)
        puts "Choose your target currency : ".colorize(:blue) 
        puts "1)  Indian(INR) ".colorize(:blue)
        puts "2)  United states(USD) ".colorize(:blue)
        puts "3)  Europe(EUR)".colorize(:blue)
        puts "4)  Japanese Yen(JPY)".colorize(:blue)
        puts "5)  Britain Pound(GBP)".colorize(:blue)
        puts "------------------------------------------------------".colorize(:blue)

        begin
            convert_curr = gets.chomp.upcase
        raise "you entered wrong currency" unless arr.include?(convert_curr)
        rescue
            puts "Enter the correct currency code in words example() : "
            retry
        end
        
        obj = Convert.new  
        obj.currencyconvert(amount,current_curr,convert_curr)
  end
  
end

obj1 = Convert.new
obj1.display_value