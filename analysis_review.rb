require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# 1. Method that splits a string (e.g. the text from `sample.txt`) into an array of normalized words. "Normalized" here means that the words should be all lowercase and scrubbed of any punctuation such as periods or parentheses.
def normalize(text)
  text.downcase.gsub(/[^a-z]/, ' ').split
end

# 2. Method that takes a string and returns an array of all *unique* words in it, ignoring punctuation and capitalization differences.
def unique(text)
  normalize(text).uniq
end

# 3. Method that counts how many words are in a string. This method should also provide the *option* to count unique words instead of total words.
def count(text)
  normalize(text).count
end

# 4. Method that takes a string and returns a hash where the keys are normalized words, and the values are integers representing how many times that word occurs in the string.
def frequencies(text)

end

# 5. Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 characters (i.e. words of 3 characters or less will not be considered). It's up to you how to handle multiple words being "tied" for most common.

binding.pry
