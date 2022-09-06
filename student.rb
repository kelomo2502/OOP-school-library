require './person'

class Student < Person
  def initialize(age, classroom)
    super(age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
