# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin

Create a method 'get_grade' with an argument of 'ary'
Array can only accept a score between 0 and 100, null if otherwise
Add total of array then divide by the number of objects in the array
Average out the score and return the letter grade as a string
90 and up for A
80 and up for B
70 and up for C
60 and up for D
59 and below for F

=end

# 2. Initial Solution

def get_grade(array)
  sum = 0
  grade = array.inject(0) {|sum, i| sum + i}.to_f / array.length
  if grade >= 101
        return nil
  end
  if grade >= 90
  	return "A"
  end
  if grade >= 80
      return "B"
  end
  if grade >= 70
      return "C"
  end
  if grade >= 60
      return "D"
  end
  if grade <= -1
    return nil
	end
  if grade <= 50
    return "F"
  end
end


# 3. Refactored Solution

def get_grade(array)
  sum = 0
  grade = array.inject(0) {|sum, integer| sum + integer}.to_f / array.length
  if grade >= 90
  	return "A"
  elsif grade >= 80
      return "B"
  elsif grade >= 70
      return "C"
  elsif grade >= 60
      return "D"
	else
		return "F"
	end
end

#4 Reflection

=begin
What parts of your strategy worked? What problems did you face?
I had put in several ends with each of my elsif statements and was wondering why they weren't working
Then I discovered that there was only need for one end. That make refactoring my code a loooot easier.

What questions did you have while coding? What resources did you find to help you answer them?
I was wondering what I would do if I wanted to make the grade nil if it was negative or greater than 100%.
	I just assume that I would use elsif statements and make the loop return nil.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	I struggled initially to get back into the ruby groove, but I think I've got it now.


Did you learn any new skills or tricks?
	.to_f will make it a float if we get any decimal grades.


How confident are you with each of the learning objectives?
	Getting pretty confident.


Which parts of the challenge did you enjoy?
	I really like how this took what we did on socrates and mixed it up with a mean function.

Which parts of the challenge did you find tedious?
	I'm honestly having a blast doing all of this coding.
	
=end