class CreateRental
  def initialize(rental, books, people)
    @rental = rental
    @books = books
    @people = people
  end

  def create_rental
    puts 'Enter date'
    date = gets.chomp
    puts 'Select book number'

    @books.each_with_index { |book, i| print "(#{i}) Title: \"#{book.title}\", Author: #{book.author}\n" }

    book = gets.chomp.to_i
    puts 'Enter person by number NOT ID'
    @people.each_with_index { |s, i| print "(#{i}) [#{s.class}] Name: #{s.name}, ID: #{s.id}, Age: #{s.age}\n" }
    person = gets.chomp.to_i
    new_rental = Rentals.new(date, @books[book], @people[person])
    @rental << new_rental
    puts 'Rental added successfully'
  end
end
