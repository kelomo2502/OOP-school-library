require './book'
require './student'
require './teacher'
require './rental'

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

  def create_person
    print "Do you want to create: \n 1 - Student \n 2 - Teacher \n 3 - Cancel \n "
    user_input = gets.chomp.to_i

    case user_input
    when 1
      print ' Enter student age: '
      age = gets.chomp.to_i
      print ' Enter classroom: '
      classroom = gets.chomp
      print ' Enter name: '
      name = gets.chomp
      new_student = Student.new(age, classroom)
      new_student.name = name unless name.empty?
      @students << new_student
      puts " #{new_student.name} added successfully"
    when 2
      print ' Enter teacher age: '
      age = gets.chomp.to_i
      print ' Enter specialization: '
      specialization = gets.chomp
      print ' Enter name: '
      name = gets.chomp
      new_teacher = Teacher.new(age, specialization)
      new_teacher.name = name unless name.empty?
      @teachers << new_teacher
      puts " #{new_teacher.name} added successfully"
    when 3
      nil
    else
      puts ' Wrong input option'
      create_person
    end
  end

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
