require 'pry'

class Customer
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self  
    end
  end
        # We're iterating through every instance of Meal and returning only the ones where the meal's customer matches the current customer instance.
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end

end