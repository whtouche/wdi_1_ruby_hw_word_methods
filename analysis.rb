require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalized_words(text)
  text.downcase.gsub(/[^a-z]/, ' ').split
end

def unique_words(text)
  normalized_words(text).uniq
end

def word_count(text, unique: false)
  if unique
    unique_words(text).count
  else
    normalized_words(text).count
  end
end

binding.pry
