# Part 1

def unique_array(a)
  # Using uniq! so that the original array itself is changed and will return only unique elements
  a.uniq!
end

def two_sum?(a, n)
  # Alternate solution
  #
  # return a.combination(2).to_a.map! {|x,y| (x + y) == n}.count(true) > 0

  a.uniq.each  do |element|
    a.uniq.each do |y|
      if (y!=element)
        return true if n==y+element
      end
    end
  end
  false
end

def group_anagrams(a)
  groups_of_anagrams = Array.new

  while not a.empty?
    anagram_group = Array.new
    word = a.delete_at(0)
    anagram_group.insert(0, word)

    a.each do |other_word|
      condition = word.chars.permutation.to_a.count(other_word.chars);
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
  # ADD YOUR CODE HERE
end

def remove_and_append_vowels(s)
  # ADD YOUR CODE HERE
end

def highest_frequency_word(s)
  # ADD YOUR CODE HERE
end

# Part 3

class Book
  # ADD YOUR CODE HERE
end