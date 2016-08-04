class Book
  attr_accessor :price
  attr_reader :author, :title, :isbn, :pages, :category

  def initialize(author, title, isbn, pages, price, category)
    @author = author
    @title  = title
    @isbn = isbn
    @pages = pages
    @price = price
    @category = category
  end

  def hash
    @isbn.hash
  end

  def to_s
    "Author: #{@author}, ISBN: #{@isbn}, Preço: #{@price}, Category: #{@category}"
  end

  def eql?(book)
    @isbn == book.isbn
  end
end
