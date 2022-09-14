require './app'
require './create_person'
require './create_book'
require './create_rental'
require './interractions'

def options
  print "\nPlease choose an option by entering a number \n\n"
  print "1 - List all books \n"
  print "2 - List all people \n"
  print "3 - Create a person (teacher or student) \n"
  print "4 - Create a book \n"
  print "5 - Create a rental \n"
  print "6 - List all rentals for a person \n"
  print "7 - Quit \n"
  gets.chomp.to_i
end

def main
  app = App.new
  interractions = Interraction.new
  interractions.interraction(app)
end

main
