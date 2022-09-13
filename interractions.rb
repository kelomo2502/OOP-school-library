class Interractions
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
    app.create_person
    interraction(app)
  when 4
    app.create_book
    interraction(app)
  when 5
    app.create_rental
    interraction(app)
  when 6
    app.list_rentals
    interraction(app)
  end
end
end