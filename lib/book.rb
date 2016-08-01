class Book
  attr_accessor :valor
  attr_reader :author, :isbn, :pages, :category

  def initialize(author, isbn, pages, valor, category)
    @author = author
    @isbn = isbn
    @pages = pages
    @valor = valor
    @category = category
  end

  def hash
    @isbn.hash
  end

  def to_s
    "Author: #{@author}, ISBN: #{@isbn}, Valor: #{@valor}, Category: #{@category}"
  end

  def eql?(book)
    @isbn == book.isbn
  end
end
