require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(500)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    return true if of_age? || @parent_permission
  end

  def of_age?
    return false unless @age >= 18

    true
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    @rentals << Rental.new(date, book, self)
  end

  private :of_age?
end
