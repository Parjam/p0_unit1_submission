# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Wm Butler Bushyhead].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# define a method called total that takes one argument called array
# total should take every numeral in an array and total them
# total should then output the sum
# define a method called sentence_maker that takes one argument called array
# join array into one string
# capitalize first letter and end with a period

# 2. Initial Solution

def total(array)
    sum = 0
    array.each { |i| sum += i }
    return sum
end

def sentence_maker (array)
    sentence = array.join (" ")
    result = sentence + "."
    final = result.capitalize
end


# 3. Refactored Solution

def total(array)
    sum = 0
    array.each { |i| sum += i }
    return sum
end

def sentence_maker (array)
    joined = array.join (" ")
    sentence = joined.capitalize + "."
end

# 4. Reflection 
# We had a bit challenge with the sentence_maker but we googled our issues and fixed it. It was my first pairing session which was very good and productive.
