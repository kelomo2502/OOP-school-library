class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    return true if is_of_age? || @parent_permission
  end

  def of_age?
    return false unless @age >= 18

    true
  end

  private :of_age?
  
end