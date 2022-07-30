require_relative './book'
require_relative './student'
require_relative './teacher'
require_relative './rental'

class App
  attr_reader :books, :people, :rentals

  def initialize()
    @books = []
    @people = []
    @rentals = []
  end
end