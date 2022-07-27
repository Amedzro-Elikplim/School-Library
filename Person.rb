class Person
  #constructor
  def initialize(name = 'Unknown', age, parent_parameters = true) 
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_parameters = parent_parameters
  end

  #id getter
  def getId
    @id
  end

  #name getter
  def getName
    @name
  end

  #age getter
  def getAge
    @age
  end

  #name setter
  def setName = (name)
    @name = name
  end

  #age Setter
  def setAge = (age)
    @age = age
  end

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
     
  end

end