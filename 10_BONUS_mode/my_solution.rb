# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin
1. Create a method named mode that takes in the argument (array)
2. Make a sandwich
3. Enjoy the sandwich
4. Think more about code
5. Finally get around to adding code into the methods body
6. create code that finds the correct mode when the mode is a unique integer
7. Create code that finds the correct mode when the mode isn't a unique integer
8. create code that returns string modes
9. Count the frequency of all the values or strings in the array by injecting the array values into a hash that will find the frequency of each value.
10. Whichever frequency is highest, return the value or string. Return all highest values if a tie.
=end

# 2. Initial Solution
=begin

def mode(data)
	frequency = data.inject({}) do |num, value|
     num[value] = data.count(value); num
	end
	high_occurance = []
	frequency.select do |num, value|
	  if value == frequency.values.max
	    high_occurance << num
	  end
	end
	return high_occurance.sort
end

=end

# 3. Refactored Solution

def mode(data)
	frequency = data.inject({}){|h, v| h[v] = data.count(v); h}
	frequency.select { |h, v| v == frequency.values.max}.keys
end

# 4. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
	I got stuck on this one. I didn't know how I was exactly supposed to find the frequency and then return the value. I went to research online.
	Everything led to creating a new hash and using the values inside. I went to office hours and Maria as well as one of the Students who graduated today made things more simple for me and I now understand how everything works.

What questions did you have while coding? What resources did you find to help you frequency them?
	I wanted to know how to best find the mode. I took a look at some other student's work and though up a way to make the code cleaner and faster.


What concepts are you having trouble with, or did you just figure something out? If so, what?

	I am having a hard time with the injection of the hash. I understand the creation of it, but I need to understand better how the values themselves are being calculated with the frequency.
	I went to office hours and they explained the pipeline better as well as different ways to find the right answer.

Did you learn any new skills or tricks?
	I learned how to inject hashes. I learned the keys method, and I also learned more about appending.

How confident are you with each of the learning objectives?
	I am a little confident, but I could be moreso. I'm doing more research on these methods so I can get better.

Which parts of the challenge did you enjoy?
	I enjoyed the challenge itself. It was difficult and forced me to grow.

Which parts of the challenge did you find tedious?
	None
=end