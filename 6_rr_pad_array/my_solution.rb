# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself ].



# 1. First Person's solution I liked (Kevin's)
#    What I learned from this solution

#I liked the pad_size method Kevin utilized here, I could use it myself, but it wouldn't make my code any simpler or more complex.
#I like the use of the if else method, and having the pad_size push in the into the new array is a viable solution, though << is cleaner and faster.


# Copy solution here:

=begin 
class Array
	def pad(min_size,opt_pad=nil)
     new_array = [] + self
     array_length = self.length
     pad_size = min_size - array_length
     if min_size <= array_length
       new_array
     else
       pad_size.times { new_array.push(opt_pad) }
     end
     new_array
   end
  
   def pad!(min_size,opt_pad=nil)
     pad_size = min_size - self.length
     if min_size <= self.length
       self 
     else
       pad_size.times { self.push(opt_pad) }
     end
     self
   end
 end
=end




# 2. Second Person's solution I liked
#    What I learned from this solution

#Jason's method seems a lot cleaner, it's very similar to Kevins and instead of using .push he uses the << operator

# Copy solution here:

=begin 
class Array 
     def pad(min_size, pad_value = nil)
         output = self.clone
         difference = min_size - output.length
     if difference <= 0
         return output
    else  
        difference.times { output << pad_value }
        return output
    end
   end
       def pad!(min_size, pad_value = nil)
         difference = min_size - self.length
     if difference <= 0
         return self
    else  
        difference.times { self << pad_value }
        return self
    end
  end
end
=end

# 3. My original solution:

=begin
class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end
=end

# 4. My refactored solution:
#min_size is minimum size
class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end


# 5. Reflection

=begin
What parts of your strategy worked? What problems did you face?
	I went through both of their code, but I honestly didn't know how adding in what they had used would refactor or improve my code.
	Not to sound like an elitist, but I would basically change my methods from an until method to an if else method, and that isn't really refactoring. It's completely remaking my code.
	What they did was great and worked well. It was easy to understand and relatively clean.

What questions did you have while coding? What resources did you find to help you answer them?
	Not too many, I commented my ideas to them.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	this is all gravy

Did you learn any new skills or tricks?
	doing .times with the difference was also a viable solution in an if else statement

How confident are you with each of the learning objectives?
	pretty darn confident

Which parts of the challenge did you enjoy?
	reviewing others code and seeing how it would work within my own

Which parts of the challenge did you find tedious?
	none, it was mainly finding out how I was going to intermix our code
=end