class Create_Rental
  def initialize(rental, books, people)
    @rental = rental
    @books = books
    @people = people
  end

  def create_rental
    puts 'Enter date'
    date = gets.chomp
    puts 'Select book number'
    list_books
    book = gets.chomp.to_i
    puts 'Enter person by number NOT ID'
    people = [*@students, *@teachers]
    people.each_with_index { |s, i| print "(#{i}) [#{s.class}] Name: #{s.name}, ID: #{s.id}, Age: #{s.age}\n" }
    person = gets.chomp.to_i
    new_rental = Rental.new(date, @books[book], people[person])
    @rentals << new_rental
    puts 'Rental added successfully'
  end
end
