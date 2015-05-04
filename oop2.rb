class Animal
  attr_accessor :name
  # def name
  #   @name
  # end
  #
  # def name=(v)
  #   @name=v
  # end

  def initialize(n)
    @name = n
  end

  def eat
    "#{name} is eating"
  end

  def speak
    "#{name} is speaking"
  end

end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

# if you need inheritance from the few classes you can use MODULE
# the name usually need to ended with -able- SwemmABLE, JumpABLE etc

module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Fetchable
  def fetch
    "#{name} is fetching!"
  end
end

class Dog < Mammal

  include Swimmable #to include all methods from the module Swimmable
  include Fetchable

  # def fetch
  #   "#{name} is fetching!"
  # end

  def speak
    "#{name} is barking!"
  end

end

class Cat < Mammal
  def speak
    "#{name} is meowing!"
  end

end

teddy = Dog.new('teddy')
puts teddy.swim
# puts teddy.name
# puts teddy.eat
puts teddy.fetch
# puts teddy.speak


kitty = Cat.new('kitty')
# puts kitty.swim
# puts kitty.name
# puts kitty.eat
# puts kitty.speak

puts Dog.ancestors
# puts Dog.superclass
