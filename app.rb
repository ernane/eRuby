require File.expand_path('lib/book')
require File.expand_path('lib/library')
require File.expand_path('lib/report')

books = [
    {author: 'Simon Holmes', title: 'MEAN Definitivo', isbn: '978-85-7522-491-5', pages: 584, price: 115.00, category: :desenvolvimento},
    {author: 'Lucas Souza', title: 'Ruby - Aprenda a programar na linguagem mais divertida', isbn: '978-85-66250-24-4', pages: 285, price: 49.90, category: :desenvolvimento}
]

library = Library.new

books.each do |book|
  library.add(Book.new(book[:author], book[:title], book[:isbn], book[:pages], book[:price], book[:category]))
end

report = Report.new(library)

puts report.total
puts report.titles