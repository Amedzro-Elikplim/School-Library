require './rental'
require './book'
require './person'

describe Rental do
 before :each do
    @rentals = Rental.new 'Date', 'Book', 'Person'
  end
end