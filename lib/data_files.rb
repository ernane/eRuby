require 'yaml'

class DataFiles
  def save(book)
    File.open('books.yml', 'a') do |file|
      file.puts YAML.dump(book)
      file.puts ''
    end
  end
end