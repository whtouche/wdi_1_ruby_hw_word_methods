=begin

   1 Method that splits a string (e.g. the text from sample.txt) into an array of normalized words. "Normalized" here means that the words should be all lowercase and scrubbed of any punctuation such as periods or parentheses.
   2 Method that takes a string and returns an array of all unique words in it, ignoring punctuation and capitalization differences.
   3 Method that counts how many words are in a string. This method should also provide the option to count unique words instead of total words.
   4 Method that takes a string and returns a hash where the keys are normalized words, and the values are integers representing how many times that word occurs in the string.
   5 Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 characters (i.e. words of 3 characters or less will not be considered). It's up to you how to handle multiple words being "tied" for most common.

=end

sample = "This (is) my-my sample string is a string!"

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# #1
def normalize(string)
  string.downcase.gsub(/[^a-z\s]/, '')
end
#puts normalize(sample_text)

# #2
# pass string (.split into array?)
# create empty array
# loop over string
# check word against array
# if it's not there, put it there
# if it is there, on to the next one
def string_to_array(string)
  array = string.split.uniq
end
print string_to_array(normalize(sample))
puts


# #4
# count words in string
# take string return hash
#

def count_words(string)
  words = string.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 } # removed .downcase assuming method 1
    return frequency
end

#puts count_words(normalize("This! (string) this-this string is a")) #
