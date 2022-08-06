require './person'

describe Person do
  before :each do
    @person = Person.new 'age', 'Name', 'Parent_permission'
  end

  describe '#new' do
    it 'takes three parameters and returns a Person object' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @person.name.should eql 'Name'
    end
  end
end
