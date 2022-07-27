class Person
  def initialize(name = 'Unknown', age, parent_permission: true) 
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def getId
    @id
  end

  def getName
    @name
  end

  def getAge
    @age
  end

  def setName(name)
    @name = name
  end

  def setAge(age)
    @age = age
  end

  def is_of_age?
    @age >= 18
  end
  private: is_of_age?

  def can_use_services?
    true if of_age? || @parent_permission
  end

end