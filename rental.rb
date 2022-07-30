require_relative 'book'
require_relative 'person'

attr_accessor :date, :book, :person

class Rental
  def initialize(date, book, person)
    @date = date

    @book = book
    @book.rentals << self

    @person = person
    @person.rentals << self
  end

end
