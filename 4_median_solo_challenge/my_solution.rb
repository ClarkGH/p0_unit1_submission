# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, it's  solo challenge ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin 
Since we're trying to find the median, here is the pseudo code:
1. Create a function called median
2. Sort the array and make it change the array permanently
3. create a variable dividing the length of the array by 2
4. if the array is even, then we will add the (i-1) and the (i) elements of the array then divide them by 2.0 (to make the result a float)
5. if the array is odd, return the (i) element of the array
=end

# 2. Initial Solution

def median(arr)
	#arr is an array
	arr.sort!
	length = arr.length
	i = length/2
	if length % 2 == 0
		return (arr[i-1] + arr[i])/2.0
	else
		return arr[i]
	end
end

# 3. Refactored Solution

#my code is pretty clean, I could change arr to array, but I have arr notated and that's good enough from what the reading says.

def median(arr)
	#arr is an array
	arr.sort!
	length = arr.length
	i = length/2
	if length % 2 == 0
		return (arr[i-1] + arr[i])/2.0
	else
		return arr[i]
	end
end

# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
	I initially was trying to find the mean as opposed to the median, but once I realized my error I was able to get everything to work out perfectly.
	Stupid mistakes really. But everything works in the long run.

What questions did you have while coding? What resources did you find to help you answer them?
	None, once I realized what I wast doing wrong I was able to fix everything.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	Not really any at this time.

Did you learn any new skills or tricks?
	Nope.

How confident are you with each of the learning objectives?
	Getting there.

Which parts of the challenge did you enjoy?
	I loved seeing everything pass through the code.

Which parts of the challenge did you find tedious? 
	None yet. It's good practice so far.
	
=end