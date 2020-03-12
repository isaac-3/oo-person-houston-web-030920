class Person
    attr_reader :name
    def initialize(name, original_amount = 25, happiness_points = 8, hygiene_points = 8)
        @name = name
        @original_amount = original_amount
        @happiness_points = happiness_points
        @hygiene_points = hygiene_points
    end
    def bank_account=(original_amount)
        @original_amount = original_amount
    end
    def bank_account
        @original_amount
    end

    def happiness=(happiness_points)
        if(0 <= happiness_points && happiness_points <= 10)
            @happiness_points = happiness_points
        elsif (happiness_points > 10)
            @happiness_points = 10
        elsif (happiness_points < 1)
            @happiness_points = 0
        end
    end
    def happiness
        @happiness_points
    end
    def hygiene=(hygiene_points)
        if(0 <= hygiene_points && hygiene_points <= 10)
            @hygiene_points = hygiene_points
        elsif (hygiene_points > 10)
            @hygiene_points = 10
        elsif (hygiene_points < 1)
            @hygiene_points = 0
        end
   end
   def hygiene
       @hygiene_points
   end
   def happy?()
    if (@happiness_points > 7)
        true
    else
        false
    end
   end
   def clean?
    if (@hygiene_points > 7)
        true
    else
        false
    end
   end
   def get_paid(salary_amount)
        @original_amount += salary_amount
    return "all about the benjamins"
   end
   def take_bath
    @hygiene_points += 4
    self.hygiene=(@hygiene_points)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @hygiene_points -= 3
        @happiness_points += 2
        self.hygiene=(@hygiene_points)
        self.happiness=(@happiness_points)
        return  "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if(topic == "politics")
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif(topic == "weather")
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end