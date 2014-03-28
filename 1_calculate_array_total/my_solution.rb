# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#Create a 'total' method that takes the argument 'array'
#Have the total method return the sum of the array's numbers
#First create the method, put the name of the array.
#call an inject method on the function

#Create sentence_maker method that takes the argument array
#call a map method in the function and have it join each of the elements with a space in between and a period at the end.

# 2. Initial Solution

def total(array)
	array.inject(0) {|sum, i| sum + i}
end

def sentence_maker(array)
	sentence = array.join(" ")
	return (sentence + ".").capitalize
end

# 3. Refactored Solution

def total(arr)
	arr.inject(0) {|sum, i| sum + i}
end

def sentence_maker(arr)
	sentence = arr.join(" ")
	return (sentence + ".").capitalize
end

# 4. Reflection 

=begin
	
What parts of your strategy worked? What problems did you face?
	I initially tried using the map function in ruby, I got confused as to how I was going to add a period or capitalize the front of the joined array.
	I then noticed the word "joined" and just used the join function. Everything worked out fine.

What questions did you have while coding? What resources did you find to help you answer them?
	I had a few basic syntax questions, but I have a few friends in the program that helped me out.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	I'm not having problems, I'm just trying to remember everything. This is all a review.

Did you learn any new skills or tricks?
	I haven't at this activity. More of a refresher. Javascript and ruby are two different languages and I need to stay with one syntax.

How confident are you with each of the learning objectives?
	I am very confident. Let's ask me questions! Confuse me, make me learn. Help me at the same time.

Which parts of the challenge did you enjoy?
	This was nice to start of very basic to return to the ruby roots.

Which parts of the challenge did you find tedious?
	Nothing so far, I am enjoying myself.

=end
