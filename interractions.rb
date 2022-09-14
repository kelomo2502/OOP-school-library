class Interraction
  def interraction(app)
    user_input = options
    case user_input
    when 1
      app.list_books
      interraction(app)
    when 2
      app.list_people
      interraction(app)
    when 3
      app.all_people
      CreatePerson.new(app.people).create_person
      interraction(app)
    when 4
      app.all_books
      CreateBook.new(app.books).create_book
      interraction(app)
    when 5
      app.all_books
      app.all_people
      CreateRental.new(app.rentals, app.books, app.people).create_rental
      interraction(app)
    when 6
      app.list_rentals
      interraction(app)
    end
  end
end
