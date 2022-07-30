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

   def add_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    puts 'Book created successfully'
    @books << book
  end

  def list_of_book
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author} "
    end
  end

   def add_person
    puts 'Add a person'
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp.to_i

    add_person while person_type != 1 && person_type != 2
    print 'Age: '
    age = gets.chomp
    print 'Name:'
    name = gets.chomp

    if person_type == 1
      print 'Has parent permission? [Y/N]:'
      response = gets.chomp.downcase
      parent_permission = response == 'y'
      @people << Student.new(age, name, parent_permission)
    else
      print 'Specialization: '
      specialization = gets.chomp
      @people << Teacher.new(age, specialization, name)
    end
    puts "Person created successfully \n"
  end

end