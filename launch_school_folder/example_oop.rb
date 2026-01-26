#oop practice
#definig classes
# fliename in snake_case and reflect class name e.g good_dog.rb
# class name is pascal case or capital CamelCase


class GoodDog
end

sparky = GoodDog.new  
# by adding .new to the c;ass name and storing it in variable 'sparky', we created an instance of the the class which is now an obj.we have instiated an obj called 'sparky'

#module is a collection of behaviours that cam be used in other classes by invoking the 'include' method

class HumanBeing
end

bob = HumanBeing.new

class BadCat
end

tom = BadCat.new


module Speak
    def speak(sound)
        puts sound
    end
end

class GoodDog
    include Speak
end


class HumanBeing
    include Speak
end

class BadCat
    include Speak
end

sparky = GoodDog.new
sparky.speak('Arf!')

bob = HumanBeing.new
bob.speak('hello!')

tom = BadCat.new
tom.speak('meow!')

puts "--- GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors
puts ''
puts "---BadCat ancestors---"
puts BadCat.ancestors
puts ''

#instance variable to name the data in the obj. instance method to name the behavior of the obj/ instance of the class "created using the instantiation process"




class GoodDog
    def initialize
        puts "this obj was initialized!"
    end
end

sparky = GoodDog.new



class GoodDog
    def initialize (name)
        @name = name
    end

    def get_name
        @name
    end

    def set_name=(name)
        @name = name
    end


    def speak
        "#{@name} says Arf!"
    end
end

sparky = GoodDog.new('Sparky')
puts sparky.speak
puts sparky.get_name
sparky.set_name = 'spartacus'
puts sparky.get_name


fido = GoodDog.new('Fido')
puts fido.speak
puts fido.get_name
fido.set_name = 'tomiwa'
puts fido.get_name
