require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Things Fall Apart', 'Chinua Achebe')
  end

  it 'Should be a book object' do
    expect(@book).to be_an_instance_of(Book)
  end
  it "Should return the book's title" do
    expect(@book.title).to eq('Things Fall Apart')
  end
  it "Should return the book's author" do
    expect(@book.author).to eq('Chinua Achebe')
  end
end
