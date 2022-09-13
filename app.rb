require './book'
require './student'
require './teacher'
require './rental'
require './person'

class App
  attr_accessor :books, :students, :teachers, :rentals

  def initialize
    @books = []
    @students = []
    @teachers = []
    @rentals = []
  end

  def list_books
    @books.each_with_index { |book, i| print "(#{i}) Title: \"#{book.title}\", Author: #{book.author}\n" }
  end

  def list_rentals
    puts 'Enter person ID: '
    user_input = gets.chomp.to_i
    user_rentals = []
    @rentals.each { |r| user_input == r.person.id ? user_rentals << r : '' }
    print "Rentals: \n"
    user_rentals.each { |r| print " Date: #{r.date}, Title: #{r.book.title}, Author: #{r.book.author}\n" }
  end

  def list_people
    @students.each { |s| print "[#{s.class}] Name: #{s.name}, ID: #{s.id}, Age: #{s.age}\n" }
    @teachers.each { |s| print "[#{s.class}] Name: #{s.name}, ID: #{s.id}, Age: #{s.age}\n" }
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:enable Metrics/CyclomaticComplexity

  def create_book
    print "Create book \n"
    print ' Enter book title: '
    title = gets.chomp
    print ' Enter author name: '
    author = gets.chomp
    new_book = Book.new(title, author)
    @books << new_book
    puts " '#{new_book.title}' added successfully"
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
