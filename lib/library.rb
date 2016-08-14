class Library
  def initialize
    @books = {}
    @data_files = DataFiles.new
  end

  def add(book)
    save book do
      @books[book.category] ||= []
      @books[book.category] << book
    end
  end

  def books
    @books.values.flatten
  end

  def books_by_category(category)
    @books[category].map
  end

  private

  def save(book)
    DataFiles.new.save(book)
    yield
  end
end