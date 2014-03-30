# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself].



# 1. First Person's solution I liked
#    What I learned from this solution: I liked using the times method
# Copy solution here:


#pad

class Array
    def pad(min_size, value = nil)
        new_array = Array.new
        self.each { |i| new_array.push(i)}
        return new_array if min_size <= new_array.length
        (min_size - new_array.length).times{new_array.push(value)}
        return new_array
    end
end


#pad!

class Array
    def pad!(min_size, value = nil)
        return self if min_size <= self.length
        (min_size - self.length).times{self.push(value)}
        return self
    end
end


# 2. Second Person's solution I liked
#    What I learned from this solution: I liked how self explanetory the code is.
# Copy solution here:

class Array
	def pad (length, padding = nil)
		if self.length < length
			remainder = length - self.length
			padded = Array.new(remainder, padding)
			return self + padded
            else
			return self.clone
		end
	end
    
	def pad! (length, padding = nil)
		if self.length < length
			while self.length < length
				self << padding
			end
			return self
            else
			return self
		end
	end	
end


# 3. My original solution:

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

# 4. My refactored solution:

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


# 5. Reflection

# Its great to see other people's different approach to same challenge. I learned there are many ways to do the same challenge.
