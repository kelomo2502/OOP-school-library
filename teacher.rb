require './person'

class Teacher < Person
  def initialize(age, specialization)
    super(age, name = 'Unknown', parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
