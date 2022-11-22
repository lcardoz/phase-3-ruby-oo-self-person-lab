class Person

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

   def bank_account=(value)
        @bank_account = value
   end

   def happiness
        @happiness
   end

   def happiness=(value)
        @happiness = value.clamp(0, 10)
   end 

   def hygiene
        @hygiene
   end

   def hygiene=(value)
        @hygiene = value.clamp(0, 10)
   end

   def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end 

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid (amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
end
