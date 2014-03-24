# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Dominick Oddo ].

# 1. Pseudocode
# define get_grade method
# get_grade needs an arguement that is an array
# get_grade needs to calculate average of array
# return the average converted to a letter grade and output it as a string


# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def get_grade(array)
    sum = 0
    array.each do |number|
      sum += number
    end
    avg = sum / array.length
    if (avg >= 90)
      return "A"
    elsif (avg >= 80)
      return "B"
    elsif (avg >= 70)
      return "C"
    elsif (avg >= 60)
      return "D"
    else
      return "F"
  end
end 


# 3. Refactored Solution

def get_grade(array)
    sum = array.inject(:+)
    avg = sum / array.length
    return "A" if (avg >= 90)
    return "B" if (avg >= 80)
    return "C" if (avg >= 70)
    return "D" if (avg >= 60)
    return "F" if (avg < 60)
end

# 4. Reflection 

# It was great pairing with Dominick. He did a great work with refactoring and we actually reduced running time. I learned about inject and how to comment multiple lines in ruby.
