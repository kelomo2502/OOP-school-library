require './nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
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

  def correct_name
    @name
  end

  private :of_age?
end
