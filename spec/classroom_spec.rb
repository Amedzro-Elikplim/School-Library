require './classroom'
require './book'
require './student'

def Classroom do

  before :each do
    @classroom = Classroom.new 'label'
  end

    describe '#new' do
    it 'takes one parameters and returns a classroom object' do
      @classroom.should be_an_instance_of Classroom
    end
  end

end