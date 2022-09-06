require './person'

class Teacher < Person
  def initialize(age, specialization, _name = 'Unknown', parent_permission: true)
    super(age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
