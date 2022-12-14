require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative './storage'
require 'json'

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
    store_book
  end

  def list_of_book
    load_books
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
    store_person
    puts "Person created successfully \n"
  end

  def list_people
    load_people
  end

  def rent_book
    print 'select a book'

    @books.each_with_index do |book, index|
      puts " [#{index}] Title: #{book.title}, Author: #{book.author} "
    end
    book_index = gets.chomp.to_i
    print 'select'
    @people.each_with_index do |person, index|
      puts "[#{index}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    people_index = gets.chomp.to_i

    puts
    print 'Date:'
    date = gets.chomp

    @rentals << Rental.new(date, @books[book_index], @people[people_index])
    save_rentals
  end

  def list_rental
    load_rentals
  end
end
