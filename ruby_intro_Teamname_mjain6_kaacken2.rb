# Part 1

def unique_array(a)
  # ADD YOUR CODE HERE
  # Using uniq! so that the original array itself is changed and will return only unique elements
  a.uniq!
end

def two_sum?(a, n)
  # ADD YOUR CODE HERE
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
  # ADD YOUR CODE HERE
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