# U1.W3: Pad an Array!

# I worked on this challenge [by myself].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? A method called pad which accepts has minimum size and value as an argument for a given array
# What is the output? (i.e. What should the code return?) Returns an array with the padding size and given value
# What are the steps needed to solve the problem? making an if statement for both pad and !pad methods


# 2. Initial Solution

class Array
	def pad (minSize, value = nil)
		arr = self.clone
		if arr.length >= minSize
		return arr
            else
		arr << value until arr.length >= minSize
		return arr
		end
	end
    
	def pad! (minSize, value = nil)
		if self.length >= minSize
		return self
            else
		self << value until self.length >= minSize
		return self
		end
	end
end

# 3. Refactored Solution

class Array
	def pad (minSize, value = nil)
        arr = self.clone
        arr << value until arr.length >= minSize
        return arr
	end
    
	def pad! (minSize, value = nil)
        self << value until self.length >= minSize
        return self
	end
end


# 4. Reflection
# I had challenge of understanding clone and self but after a bit research, I think I got it.
