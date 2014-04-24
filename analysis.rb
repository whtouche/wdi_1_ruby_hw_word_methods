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

def word_frequencies(text)
  frequencies = Hash.new(0)
  normalized_words(text).each do |word|
    frequencies[word] += 1
  end
  frequencies
end

def most_common_word(text, length_threshold: 3)
  # More compact version but also more complex
  # frequencies = word_frequencies(text)
  # frequencies.delete_if{ |word, frequency| word.length <= length_threshold }
  # frequencies.max_by{ |word, frequency| frequency }

  highest_frequency = 0
  most_common = nil

  word_frequencies(text).each do |word, frequency|
    if word.length > length_threshold && frequency > highest_frequency
      highest_frequency = frequency
      most_common = word
    end
  end

  most_common
end

def longest_words(text)
  words_by_length = unique_words(text).group_by{ |word| word.length }
  length_of_longest_word = words_by_length.keys.sort.last
  words_by_length[length_of_longest_word]
end

binding.pry
