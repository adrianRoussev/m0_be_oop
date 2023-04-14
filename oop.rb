# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  attr_reader :name, :saywords, :color
    def initialize(name, saywords = "*~**~*", color = "silver")
      @name = name
      @saywords = saywords
      @color = color
     
    end
  
    def say(words)
     @saywords = "*~*#{words}*~*"
    end
  end
  
  unicorn1 = Unicorn.new("uni")
  p unicorn1.name
  unicorn1.say("hello")
  p unicorn1.saywords

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
      @name = name
      @pet = pet
      @thirsty = true
     
    end
  
    def drinkz_blood
     @thirsty = false
    end
  end
  
  vampire1 = Vampire.new("adrian")
  p vampire1
  vampire1.drinkz_blood
  p vampire1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  attr_reader :name, :rider, :colour, :hungry, :times_eaten
    def initialize(name, rider, colour)
      @name = name
      @rider = rider
      @colour = colour
      @hungry = true
      @times_eaten = 0
     
    end
  
    def eats
     @times_eaten = @times_eaten + 1
    if @times_eaten >= 4
     @is_hungry = false
    end
  end
end
  
  dragon1 = Dragon.new("happy", "rider", "black")
  p dragon1
  dragon1.eats
  p dragon1
dragon1.eats
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_reader :name, :disposition, :has_ring
    def initialize(name, disposition)
      @name = name
      @disposition = disposition
      @age = 0
      @is_adult = false
      @is_old = false
      @has_ring = false
    end
  
    def celebrate_bday
        @age = @age + 1
      if @age >=33
        @is_adult = true
      end
      if @age>=101
        @is_old = true
      end
    end
    def has_ring?
      if @name== "frodo"
        @has_ring = true
      end
    end
  
end
  
hobbit1 = Hobbit.new("frodo", "evil")
  p hobbit1  

100.times{hobbit1.celebrate_bday}
hobbit1.has_ring?
  p hobbit1