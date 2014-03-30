# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Hunter T.Chapman].

# 1. Pseudocode

# What is the input?
# The method takes an array

# What is the output? (i.e. What should the code return?)
# The array of most common elements

#What are the steps needed to solve the problem?
#Define a function mode which accepts a single input
#Variable counts = Hash.new populated by 0
#Iterate through the input array and for each element we will add to the count
#Create return array and set it equal to an empty array
#Iterate through counts using keys and values
#If statement where value == max counts then push the key to return array

# 2. Initial Solution

def mode (array)
    count_hash = Hash.new (0)
    array.each { |x| count_hash[x] += 1 }
    result_array = []
    
    count_hash.each do |key, value|
        if value == count_hash.values.max
            result_array << key
        end
    end
    return result_array
end



# 3. Refactored Solution

 def mode (array)
    counter = Hash.new (0)
    array.each { |x| counter[x] += 1 }
    results = []
    counter.each do |key, value|
        results << key if value == counter.values.max
    end
    return results
 end

# 4. Reflection

 
# We came across this in our research but we did not use it.
# We would both be interested in how it works...
 
# def one_mode(ary)
# ary.max_by { |x| ary.count(x) }
# end
 
# We also tried to subtract the array from a unique array using uni method but that didn't work because it would return an empty array.
