require_relative './app'
require 'json'

def store_person
   data = []
   @people.each do |person|
       data << if person.instance_of?(Student)
              { class: person.class.name, id: person.id, age: person.age, name: person.name }
            else
              { id: person.id, age: person.age, name: person.name, specialization: person.specialization }
            end
    saved_data = JSON.generate(data)
    File.write('people.json', saved_data)
   end
end

def load_people
  if File.zero?('people.json')
    puts 'No registered person yet, Register first!'
  else
    data = File.read('people.json')
    saved_data = JSON.parse(data)
    saved_data.each do |person|
      puts "[#{person['class']}] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
    end
  end
end

def store_book
  data = []
  @books.each do |book|
    data << { title: book.title, author: book.author }
    File.write('books.json', JSON.generate(data))
  end
end