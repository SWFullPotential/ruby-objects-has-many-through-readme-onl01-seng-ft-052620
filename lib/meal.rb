require 'pry'

class Meal
  attr_accessor :waiter, :customer, :total, :authenticate_or_request_with_http_digest, :tip
  
  @@all = []
  
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
  
  def self.all
    @@all  
  end
  
#binding.pry
  
end