require File.expand_path('lib/book')
require File.expand_path('lib/library')

b1 = Book.new('David Paniz', '978-85-5519-192-3', 177, 49.90)
b2 = Book.new('Rodrigo Turini', '978-85-5519-040-7', 216, 49.90)
b3 = Book.new('Fabricio Teixeira', '978-85-66250-48-0', 271, 49.90)
b4 = Book.new('Alberto Souza', '978-85-5519-115-2', 310, 49.90)

b5 = Book.new('Simon Holmes', '978-85-7522-491-5', 310, 115.00)
b6 = Book.new('Aurelio Marinho Jargas', '978-85-7522-474-8', 248, 59.00)
b7 = Book.new('Al Sweigar', '978-85-7522-446-5', 568, 99.00)
b8 = Book.new('Ben Smith', '978-85-7522-436-6', 400, 89.90)

library = Library.new

library.add(b1)
library.add(b2)
library.add(b3)
library.add(b4)
library.add(b5)
library.add(b6)
library.add(b7)
library.add(b8)

for b in library.books do
  p b.isbn
end