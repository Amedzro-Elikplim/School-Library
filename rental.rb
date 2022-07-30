require_relative 'book'
require_relative 'person'

class Rental
  def initialize(date)
    @date = date
  end

  attr_accessor :date
end