class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end
end