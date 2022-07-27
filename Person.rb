class Person
  #constructor
  def initialize(name = 'Unknown', age, parent_permission = true) 
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
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

  private
  def is_of_age?
    @age >= 18
  end

  public
  def can_use_services?
     true if of_age? || @parent_permission
  end


end