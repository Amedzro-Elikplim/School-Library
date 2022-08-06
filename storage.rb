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