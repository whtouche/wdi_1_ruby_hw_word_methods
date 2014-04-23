# Alice Analysis

*"Curiouser and curiouser!"*

This assignment is an exercise in writing and combining your own methods, and looking up documentation on some of Ruby's built-in methods. In `sample.txt` you will find the first chapter of [Alice's Adventures in Wonderland](http://www.literature.org/authors/carroll-lewis/alices-adventures-in-wonderland/) in plain text format &ndash; your goal is to write several methods to analyze this text. `analysis.rb` contains a line that will load the text into a Ruby string to get you started.

## Methods to Write

These are listed in the order we suggest you write them, but it's possible to skip around a bit. The naming of these methods is up to you.

1. Method that splits a string (e.g. the text from `sample.txt`) into an array of normalized words. "Normalized" here means that the words should be all lowercase and scrubbed of any punctuation such as periods or parentheses.
2. Method that takes a string and returns an array of all *unique* words in it, ignoring punctuation and capitalization differences.
3. Method that counts how many words are in a string. This method should also provide the *option* to count unique words instead of total words.
4. Method that takes a string and returns a hash where the keys are normalized words, and the values are integers representing how many times that word occurs in the string.
5. Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 characters (i.e. words of 3 characters or less will not be considered). It's up to you how to handle multiple words being "tied" for most common.
6. Method that finds the length of the longest word in a string, and returns an array of all unique words in the string that are that length.

## Grading

* **(6)** Completion of each method in the above list (one point each)
* **(2)** Methods are combined appropriately to avoid duplication of code
* **(1)** Repository has several logical commits with descriptive messages
* **(1)** Code uses correct indentation/style and descriptive variable names

## Bonuses

* **(1)** Alice was beginning to get very tired of analyzing the same text over and over. "Well!" thought Alice to herself, "we can't have covered this in class, but perhaps I can write a method that takes the URL of a web page and returns all the text in it. Then I'd have all the text in the world to analyze!"
