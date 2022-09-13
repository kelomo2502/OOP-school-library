class CreateBook
  def initialize(book)
    @book = book
  end

  def create_book
    print "Create book \n"
    print ' Enter book title: '
    title = gets.chomp
    print ' Enter author name: '
    author = gets.chomp
    new_book = Book.new(title, author)
    @book << new_book
    puts " '#{new_book.title}' added successfully"
  end
end
