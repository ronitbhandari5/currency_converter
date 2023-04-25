require 'money'

class Excha
    def conversion  
        I18n.config.available_locales = :en
        puts " Enter the amount : "
        @inr = gets.to_i
        puts "choose what you want --"
        puts "1)  INR to USD "
        puts "2)  INR to Euro"
        puts "3)  INR to IQD"
        puts "4)  INR to JPY"
        puts "5)  INR to pound"
        option = gets.to_i
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
            puts "Invalid amount"
        end
    end

    obj = Excha.new
    obj.conversion
end

        
