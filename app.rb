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
end