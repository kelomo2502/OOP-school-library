require 'json'
class CreateBook
  def initialize(book)
    @books = book
  end

  def create_book
    print "Create book \n"
    print ' Enter book title: '
    title = gets.chomp
    print ' Enter author name: '
    author = gets.chomp
    new_book = Book.new(title, author)
    book_obj = { Title: new_book.title, Author: new_book.author, Rentals: [] }
    @books << book_obj

    File.open('book.json', 'w+') do |file|
      books = JSON.dump(@books)
      file.write(books)
    end

    puts " '#{new_book.title}' added successfully"
  end
end
