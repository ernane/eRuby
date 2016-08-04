require File.expand_path('lib/book')
require File.expand_path('lib/library')
require File.expand_path('lib/report')
require File.expand_path('lib/data_files')

books = [
    {author: 'Simon Holmes', title: 'MEAN Definitivo',
     isbn: '978-85-7522-491-5', pages: 584, price: 115.00, category: :fronted},

    {author: 'Lucas Souza', title: 'Ruby - Aprenda a programar na linguagem mais divertida',
     isbn: '978-85-66250-24-4', pages: 285, price: 49.90, category: :backend},

    {author: 'Anderson Leite', title: 'Desenvolvimento de Jogos para Android',
     isbn: '978-85-66250-17-6', pages: 189, price: 49.90, category: :game},

    {author: 'Éderson Cássio', title: 'Desenvolva jogos com HTML5 Canvas e JavaScript',
     isbn: '978-85-66250-38-1', pages: 221, price: 49.90, category: :game},

    {author: 'Diego Eis', title: 'Guia Front-End',
     isbn: '978-85-5519-012-4', pages: 174, price: 49.90, category: :fronted}
]

library = Library.new

books.each do |book|
  library.add(Book.new(book[:author], book[:title], book[:isbn], book[:pages], book[:price], book[:category]))
  DataFiles.new.save(Book.new(book[:author], book[:title], book[:isbn], book[:pages], book[:price], book[:category]))
end

report = Report.new(library)

puts report.total
#puts report.total(:desenvolvimento)

puts report.titles
#puts report.titles(:desenvolvimento)
