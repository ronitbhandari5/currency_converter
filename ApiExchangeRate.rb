require 'httparty'
require 'colorize'

response = HTTParty.get('https://openexchangerates.org/api/latest.json?app_id=cf06055c47344b90b382b22bff5c7cb3')
exchange_rates = response.parsed_response['rates']
# puts exchange_rates.body if exchange_rates.code == 200 

        puts "------------------------------------------------------".colorize(:yellow)
        puts " Choose your current currency type example(INR ,USD ,KQD ,etc.)--".colorize(:yellow)
        puts "------------------------------------------------------".colorize(:yellow)


        # Handling Error
        begin
            current_curr = gets.chomp.upcase
        raise "You entered wrong currency code" unless exchange_rates.keys.include?(current_curr)
        rescue
            puts " Enter the correct currency code in words example(inr,usd,eur,jpy,gbp): ".colorize(:light_green)
            retry 
        end
        #-------------------------------------------
        puts "------------------------------------------------------".colorize(:light_green)
        puts "Enter the amount you want to convert : ".colorize(:light_green)
        puts "------------------------------------------------------".colorize(:light_green)
        #-------------------------------------------------
        begin
          amount=Float(gets)
        rescue ArgumentError 
          puts "Enter amount in numbers :".colorize(:light_green)
          retry
        end
        #-------------------------------------------------

        puts "------------------------------------------------------".colorize(:blue)
        puts "Choose your target currency (example - USD ,INR ,IQD ,etc.): ".colorize(:blue) 
        puts "------------------------------------------------------".colorize(:blue)

        begin
          target_currency = gets.chomp.upcase
        raise "you entered wrong currency" unless exchange_rates.keys.include?(target_currency)
        rescue
            puts "Enter the correct currency code in words example() : "
            retry
        end

def convert_currency(current_curr,target_currency , amount, exchange_rates)
    source_rate = exchange_rates[current_curr]
    target_rate = exchange_rates[target_currency]
    converted_amount = (amount / source_rate) * target_rate
    puts "Your converted amount is : #{converted_amount}".colorize(:light_green)
end

converted_amount = convert_currency(current_curr, target_currency, amount, exchange_rates)
