require_relative '../person'
require_relative './classroom'

class Student < Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :classroom

  def initialize(age, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
