class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book = { Rentals: [] }, person = { Rentals: [] })
    @date = date
    @book = book
    book['Rentals'] << self
    @person = person
    person['Rentals'] << self
  end
end
