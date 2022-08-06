require './rental'
require './book'
require './person'

describe Rental do
 before :each do
    @rentals = Rental.new 'Date', 'Book', 'Person'
  end


  describe '#date' do
    it 'returns the correct date' do
      @rentals.date.should eql 'Date'
    end
  end

    describe '#book' do
    it 'returns the correct book' do
      @book.book.should eql 'Book'
    end
  end

end