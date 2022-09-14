class CreateRental
  def initialize(rental, books, people)
    @rentals = rental
    @books = books
    @people = people
  end

  def create_rental
    puts 'Enter date'
    date = gets.chomp
    puts 'Select book number'
    @books.each_with_index { |book, i| print "(#{i}) Title: \"#{book['Title']}\", Author: #{book['Author']}\n" }
    book = gets.chomp.to_i
    puts 'Enter person by number NOT ID'
    @people.each_with_index do |s, i|
      print "(#{i}) [#{s['Person']}] Name: #{s['Name']}, ID: #{s['ID']}, Age: #{s['Age']}\n"
    end
    person = gets.chomp.to_i
    new_rental = Rental.new(date, @books[book], @people[person])
    rental_obj = { Title: new_rental.book['Title'], Author: new_rental.book['Author'], Date: new_rental.date,
                   ID: new_rental.person['ID'] }
    @rentals << rental_obj

    File.open('rentals.json', 'w+') do |file|
      rent = JSON.dump(@rentals)
      file.write(rent)
    end
    puts 'Rental added successfully'
  end
end
