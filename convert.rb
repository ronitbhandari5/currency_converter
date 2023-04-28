require 'money'

class Excha
    def conversion  
        I18n.config.available_locales = :en
        puts " Enter the amount : "
        @inr = gets.to_i
        puts "You want to convert currency into  : "
        puts "1) USD "
        puts "2) Euro"
        puts "3) INR"
        puts "4) JPY"
        puts "5) pound"

        option = gets.to_i

        puts "You have chosen #{option}"

        case option
        when 1
            Money.add_rate("INR", "USD", 0.0122)
            rs = Money.from_amount(@inr, "INR").exchange_to("USD")
            puts rs.format
        when 2
            Money.add_rate("INR", "EUR", 0.0111)
            rs = Money.from_amount(@inr,"INR").exchange_to("EUR")
            puts rs.format
        when 3
            Money.add_rate("INR", "IQD", 0.0037)
            rs = Money.from_amount(@inr,"INR").exchange_to("IQD")
            puts rs.format
        when 4
            Money.add_rate("INR", "JPY", 1.634)
            rs = Money.from_amount(@inr,"INR").exchange_to("JPY")
            puts rs.format
        when 5
            Money.add_rate("INR", "GBP", 0.0098)
            rs = Money.from_amount(@inr,"INR").exchange_to("GBP")
            puts rs.format
        else
            puts "Please choose number from given options.."
        end
    end

    obj = Excha.new
    obj.conversion
end    