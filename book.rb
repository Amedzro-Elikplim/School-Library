class Book
  attr_accessor :title, :author
  attr_reader :rental
  
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end


end
