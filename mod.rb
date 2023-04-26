require 'money'
require 'colorize'
I18n.config.available_locales = :en
module Xe
    RATES = {
    'INR': {
      'USD': 0.0122,
      'EUR': 0.011,
      'JPY': 1.6294,
      'GBP': 0.0098
    },
    'USD': {
       'INR': 81.97,
       'EUR': 0.805,
       'JPY': 133.56,
       'GBP': 0.805
    },
    'EUR':{
      'INR': 89.9676,
      'USD': 1.098,
      'JPY': 146.65,
      'GBP': 0.8893,
    },
    'JPY':{
      'INR': 0.6138,
      'USD': 0.0075,
      'EUR': 0.0068,
      'GBP': 0.006
    },
    'GBP':{
      'INR': 101.828,
      'USD': 1.2423,
      'EUR': 1.1314,
      'JPY': 165.91
    }
  }
  
  RATES.each do |first_curr,sec_curr|
    sec_curr.each do |to_curr,curr_rate|
      Money.add_rate(first_curr,to_curr,curr_rate)
    end
  end
  def currencyconvert(amount,current_curr,convert_curr)
    money=Money.from_amount(amount,current_curr)
    converted_money = money.exchange_to(convert_curr)
    puts "Your target currency is  : #{converted_money.format}".colorize(:yellow)
  end
 
end
 


