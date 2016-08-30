# def total_characters(array)
#   total_letter_count = 0
#
#   array.each do |word|
#     total_letter_count += word.length
#   end
#   puts total_letter_count
# end
#n
# total_characters ["adios","bye", "ciao"]

#Check if its a vowel or not. Return Boolean
def is_a_vowel?(character)
  return ["a","e","i","o","u"].include? character
end

# This returns the number of vowels in a word.
def vowels_in_word(word)
vowel_counter = 0
  word.each_char do |char|
    if is_a_vowel?(char) == true
      vowel_counter +=1
    end
  end
  return vowel_counter
end

# This returns the word in the sentence with the most vowels.
def most_vowels(sentence)
  words_as_array = sentence.strip.downcase.split(" ")
  highest_vowels = 0
  current_word = " "

  words_as_array.each do |text|
    text_vowel = vowels_in_word(text)
    if text_vowel > highest_vowels
      highest_vowels = text_vowel
      current_word = text
    end
  end
  return current_word
end

# TEST: Do not change anything below this line.
test_sentence = "The coldest winter I ever spent was a summer in San Francisco"
word_with_most_vowels = most_vowels(test_sentence)

if word_with_most_vowels.downcase == "francisco"
puts "CONGRATS! YOU DID IT!"
else
puts "FAIL: 'Francisco' was expected, but your method reported " +
     "'#{word_with_most_vowels}' as the word with most vowels. Keep trying!"
end
