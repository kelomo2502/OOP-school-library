require './book'
require './student'
require './teacher'
require './rental'
require './person'

class App
  attr_accessor :books, :rentals, :people

  def initialize
    @books = []
    @rentals = []
    @people = []
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
    @people.each { |s| print "[#{s.class}] Name: #{s.name}, ID: #{s.id}, Age: #{s.age}\n" }
  end
end
