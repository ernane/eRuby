class Library
  def initialize
    @books = {}
  end

  def add(book)
    @books[book.category] ||= []
    @books[book.category] << book
  end

  def books
    @books.values.flatten
  end

  def books_by_category(category)
    @books[category].map
  end
end