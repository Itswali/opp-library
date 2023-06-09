require_relative '../person'
require_relative './classroom'

class Student < Person
  attr_accessor :classroom
  attr_reader :parent_permission


  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, name = 'Unkown', parent_permission = true)
  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  # rubocop:enable Style/OptionalBooleanParameter
  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_to_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
