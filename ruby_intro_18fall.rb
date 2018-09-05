# Part 1

def unique_array(a)
  return a.uniq
end

def two_sum?(a,n)
  return a.combination(2).to_a.map! {|x,y| (x + y) == n}.count(true) > 0
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