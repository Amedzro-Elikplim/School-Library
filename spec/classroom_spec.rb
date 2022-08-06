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

   describe '#label' do
    it 'returns the correct class' do
      @classroom.label.should eql 'label'
    end
  end

end