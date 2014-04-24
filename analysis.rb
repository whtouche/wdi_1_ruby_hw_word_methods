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
  most_common = nil
  highest_frequency = 0

  word_frequencies(text).each do |word, frequency|
    if word.length > length_threshold && frequency > highest_frequency
      highest_frequency = frequency
      most_common = word
    end
  end

  most_common
end

def longest_words(text)
  longest_list = []
  longest_word_length = 0

  unique_words(text).each do |word|
    if word.length > longest_word_length
      longest_list = [word]
      longest_word_length = word.length
    elsif word.length == longest_word_length
      longest_list << word
    end
  end

  longest_list
end

# Advanced versions of the above two methods that use more "Ruby magic"

def most_common_word_advanced(text, length_threshold: 3)
  frequencies = word_frequencies(text)
  frequencies.delete_if{ |word, frequency| word.length <= length_threshold }
  frequencies.max_by{ |word, frequency| frequency }
end

def longest_words_advanced(text)
  words_by_length = unique_words(text).group_by{ |word| word.length }
  longest_word_length = words_by_length.keys.sort.last
  words_by_length[longest_word_length]
end

binding.pry
