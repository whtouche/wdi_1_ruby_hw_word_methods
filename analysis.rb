require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalized_words(text)
  text.downcase.gsub(/[^a-z]/, ' ').split
end

binding.pry
