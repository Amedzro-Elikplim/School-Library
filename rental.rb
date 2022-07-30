require_relative 'book'
require_relative 'person'

attr_accessor :date :book, :person

class Rental
  def initialize(date)
    @date = date
    @book = book
    @person = person
  end


  def add_rental
    book.rentals << self
  end

  def add_to_person
    person.rentals << self
  end
end