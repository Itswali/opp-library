require_relative './modules/nameable'
require_relative './modules/rental'
class Person < Nameable
  attr_accessor :name, :age, :rentals, :book, :date

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services
    return unless @age >= 18 || parent_permission

    true
  end

  def correct_name
    @name
  end

  private

  def of_age
    @age >= 18
  end

  def add_rentals(book, date)
    @rentals << Rental.new(date, book, self)
  end
end