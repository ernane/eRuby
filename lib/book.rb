class Book
  attr_accessor :valor
  attr_reader :author, :isbn, :pages

  def initialize(author, isbn, pages, valor)
    @author = author
    @isbn = isbn
    @pages = pages
    @valor = valor
  end

  def to_s
    "Author: #{@author}, ISBN: #{@isbn}, Valor: #{@valor}"
  end
end
