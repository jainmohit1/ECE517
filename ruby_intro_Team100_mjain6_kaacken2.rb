# ===========================================================================
# File name: ruby_intro_Team100_mjain6_kaacken2.rb
#
# Description: Program 1, basic array and string manipulations as well as
# basic object implementation
#
# For: ECE 517 (Object-oriented Design and Development) at NCSU, taught by
# Dr. Edward Gehringer
#
# Acknowledgement: Thanks to Dr. Edward Gehringer for the code template.
#
# Authors: Mohit Jain <mjain6@ncsu.edu>, Kevin Acken <kaacken2@ncsu.edu>
# Date: September 14, 2018
# Interpreter: ruby-2.4.4-p296
# Version: 1.0
# ===========================================================================


# Part 1

def unique_array(a)
  # Using uniq! so that the original array itself is changed and will return only unique elements
  a.uniq!
end

def two_sum?(a, n)
  return a.combination(2).to_a.map! {|x,y| (x + y) == n}.count(true) > 0

  # Alternate solution
  #
  # a.uniq.each  do |element|
  # a.uniq.each do |y|
  #   if (y!=element)
  #     return true if n==y+element
  #     end
  #   end
  # end
  # false
end

def group_anagrams(a)
  groups_of_anagrams = []

  # Collect all anagrams of the first word in a.
  while not a.empty?
    anagram_group = []
    word = a.delete_at(0)
    anagram_group.insert(0, word)

    # Look through the rest of the words for anagrams and add them to the current
    # anagram group.
    a.each do |other_word|
      if word.chars.permutation.to_a.count(other_word.chars) > 0 then
        anagram_group.insert(-1, other_word)
        a.delete(other_word)
      end
    end

    groups_of_anagrams.insert(-1, anagram_group)
  end

  return groups_of_anagrams
end

# Part 2 

def palindrome?(s)
  return s.reverse.downcase == s.downcase
end

def remove_and_append_vowels(s)
  vowels = []

  characters = s.chars
  characters.each_with_index do |c, i|
    # Delete vowels from the characters list and add them to the vowels list.
    if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].count(c) > 0 then
      characters.delete_at(i)
      vowels.insert(-1, c)
    end
  end

  # Return the consonants and then the vowels.
  return (characters + vowels).join
end

def highest_frequency_word(s)
  # Make the whole sentence lowercase, remove the period,
  # and create an array of its words.
  characters = s.downcase.chars
  characters.delete('.')
  words = characters.join.scan(/\w+/)

  # Use a dictionary of word_counts, i.e. "tree" => 5
  word_counts = {}

  # Count the number of occurrences of each word
  words.each do |w|
    if word_counts.has_key?(w) then
      word_counts[w] += 1
    else
      word_counts[w] = 1
    end
  end

  # Return the word with the most occurrences (key of highest value)
  highest_count = 0
  key_for_highest_count = nil
  word_counts.each_key() do |w|
    if word_counts[w] > highest_count then
      highest_count = word_counts[w]
      key_for_highest_count = w
    end
  end

  return key_for_highest_count
end

# Part 3

class Book
  # ADD YOUR CODE HERE
end