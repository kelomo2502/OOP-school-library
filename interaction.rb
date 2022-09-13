class Interaction
  def interaction(app)
    user_input = options
    case user_input
    when 1
      app.list_books
      interaction(app)
    when 2
      app.list_people
      interaction(app)
    when 3
      Create_Person.new(app.people).create_person
      interaction(app)
    when 4
      Create_Book.new(app.books).create_book
      interaction(app)
    when 5
      Create_Rental.new(app.rental, app.books, app.people).create_rental
      interaction(app)
    when 6
      app.list_rentals
      interaction(app)
    end
  end
end
