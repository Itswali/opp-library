require_relative '../person'
require_relative '../book'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, _book, _person)
    @date = date
  end

  def book=(book)
    @book = book
    book.add_rental(self) unless book.rentals.include?(self)
  end

  def person=(person)
    @person = person
    person.add_rentals
  end

  def to_hash
    {
      date: date,
      book: book,
      person: person
    }
  end
end
