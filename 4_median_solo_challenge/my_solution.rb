# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? A sorted array of numbers or strings
# What is the output? (i.e. What should the code return?) The number or string in the middle of the array if the array length is odd, and the average of the array if its even
# What are the steps needed to solve the problem? First, sorting the array and then finding the median


# 2. Initial Solution

def median (array)
	sorted_array = array.sort
	if sorted_array.length % 2 == 0
		return (sorted_array[(sorted_array.length/2) - 1] + sorted_array[sorted_array.length/2]) / 2.0
        else
		return sorted_array[sorted_array.length/2]
	end
end


# 3. Refactored Solution

def median (array)
	arr = array.sort
	if arr.length % 2 == 0
		return (arr[(arr.length/2) - 1] + arr[arr.length/2]) / 2.0
        else
		return arr[arr.length/2]
	end
end

# 4. Reflection

# I had an issue resulting 5 instead of 5.5 and 4 instead of 4.5. After working with IRB and testing each method seperately, I noticed that missed to write 2.0 instead of 2. It got fixed and now runs perfectly.
