require './person'

describe Person do
  before :each do
    @person = Person.new 'age', 'name', 'parent_permission'
  end

  describe '#new' do
    it 'takes three parameters and returns a Person object' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @person.name.should eql 'name'
    end
  end

  describe '#age' do
    it 'returns the correct author' do
      @person.age.should eql 'age'
    end
   end

  it 'should check age limit' do
    age = 12
    name = 'amina'
    parent_permission = true
    person = Person.new(age, name, parent_permission)
    expect(person.of_age?).to be false
  end

   it 'should check correct name' do
    age = 12
    name = 'amina'
    parent_permission = true
    person = Person.new(age, name, parent_permission)
    expect(person.correct_name).to be name
  end

  
end
