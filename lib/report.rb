class Report
  def initialize(library)
    @library = library
  end

  def total(category=nil)
    if category
      @library.books_by_category(category).map(&:price).inject(:+)
    else
      @library.books.map(&:price).inject(:+)
    end
  end

  def titles(category=nil)
    handle_none(category, :title) do
      @library.books_by_category(category).map(&:title)
    end
  end

  private

  def handle_none(value, key)
    if value
      yield
    else
      @library.books.map(&key.to_sym)
    end
  end
end