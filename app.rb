require 'json'
require './book'
require './student'
require './teacher'
require './rental'

class App
  attr_accessor :books, :rentals, :people

  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def list_books
    File.open('book.json', 'r') do |file|
      books = JSON.parse(file.read)
      books.each_with_index { |book, i| puts "(#{i}) Title: '#{book['Title']}', Author: #{book['Author']} " }
    end
  end

  def all_books
    File.open('book.json', 'r') do |file|
      books = JSON.parse(file.read)
      @books = []
      books.each { |book| @books << book }
    end
  end

  def list_rentals
    File.open('rentals.json', 'r') do |file|
      rents = JSON.parse(file.read)
      @rentals = []
      rents.each { |_book| @rentals << rents }
    end
    puts 'Enter person ID: '
    user_input = gets.chomp.to_i
    user_rentals = []
    @rentals[0].each { |r| user_input == r['ID'] ? user_rentals << r : '' }

    print "Rentals: \n"
    user_rentals.each { |r| print " Date: #{r['Date']}, Title: #{r['Title']}, Author: #{r['Author']}\n" }
  end

  def list_people
    File.open('people.json', 'r') do |file|
      people = JSON.parse(file.read)
      people.each_with_index do |person, i|
        puts "(#{i}) [#{person['Person']}] Name: #{person['Name']}, ID: #{person['ID']}, Age: #{person['Age']} "
      end
    end
  end

  def all_people
    File.open('people.json', 'r') do |file|
      people = JSON.parse(file.read)
      @people = []
      people.each { |person| @people << person }
    end
  end
end
