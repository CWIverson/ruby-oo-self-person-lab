require 'pry'
class Person
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end
    
    def name
        @name
    end
    def bank_account
        @bank_account
    end
    def bank_account=(n)
    end
    def get_paid(salary)
        @bank_account+=salary
        "all about the benjamins"
    end
    def happiness
        @happiness.clamp(0,10)
    end
    def happiness=(happiness)
        @happiness=happiness
    end
    def happy?
        if happiness>7
           return true
        else
           return false
        end
    end
    def hygiene
        @hygiene.clamp(0,10) 
    end 
    def hygiene=(n)
        @hygiene = n
        
    end
       
    def clean?
        if hygiene>7
            return true
        else
            return false
        end
    end
       
    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        @happiness += 3
        person.happiness += 3
        self.happiness = (@happiness)
        "Hi #{person.name}! It's #{@name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            @happiness -= 2
            person.happiness -= 2
            self.happiness = (@happiness)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            person.happiness += 1
            self.happiness = (@happiness)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
