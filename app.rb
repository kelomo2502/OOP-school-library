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

end