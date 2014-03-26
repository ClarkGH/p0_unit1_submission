# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  return source.push(thing_to_locate).sort_by{|word| word.downcase}
end

def my_hash_sorting_method(source)
  return source.sort_by{|name, age| age}
end

i_want_pets = ["I", "want", "3", "but", "have", "only", "4" ]
my_family_pets_ages = {
   :Annabelle => 2,
	:Ditto => 5,
	:Hoobie => 5,
	:Bogart => 6,
	:Poly => 6,
	:Evi => 8,
	:George => 14
}
=begin Pseudocode

1.sort_by would be a good way to sort. Can also use .sort.
2.Only need one argument to alphabetize, so we'll just push thing_to_locate inside the array.
3.use .downcase in sort_by do block to ensure that things are alphabetized correctly.
4.source will be the array

1.Same situation as top, only sort_by contains enumerable in this case
2.Since we're using numbers, no need to use .downcase
3.
4.

=end
# Identify and describe the ruby method you implemented. 

# =>          Part 1:

# I used both .sort_by and .downcase. sort_by is slightly different from .sort, it takes one parameter and creates a temporary array for all of the items.
# sort_by is more useful than .sort when there are more extensive things to calculate.
# .downcase added in the .sort_by do block makes it alphabetize things correctly, the test is wrong. My code works perfectly, what they're looking for isn't alphabetized
# if you don't call .downcase, the capital words are sorted before the lowercased words. If I wanted to get the result they wanted I wouldn't call .downcase

#below is how to get the answer they were looking for

#def my_array_sorting_method(source, thing_to_locate)
  #return source.push(thing_to_locate).sort
#end

# => 				Part 2:

#Same situation as last time, only now we're sorting for age over name and don't need downcase.
#
#

# Person 4
def my_array_deletion_method(source, thing_to_delete)
	
end




def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

=begin
# Reflect!

What parts of your strategy worked? What problems did you face?

	I went beyond what they were asking for the first one and made it actually alphabetize things. Initially I had tried calling sort, but after learning that sort_by is better to get used to with larger calculations, I went with it.

	With the hash sorting method

What questions did you have while coding? What resources did you find to help you answer them?
	I wanted to know the difference between .sort and .sort_by a little more in depth, so I went to these sites:
		http://brandon.dimcheff.com/2009/11/18/rubys-sort-vs-sort-by.html
		http://gayleforce.wordpress.com/2009/09/28/ruby-sorting-1-when-and-why-to-use-sort_by/
		http://apidock.com/ruby/Enumerable/sort_by
		http://stackoverflow.com/questions/2637419/understanding-ruby-array-sort

	For the hash sorting method

What concepts are you having trouble with, or did you just figure something out? If so, what?
	I'm loving the research here. I feel like I'm growing a lot, but I also feel like I'm taking up too much time researching every little thing.
	I had to review the syntax for hashes, and that's definitely something I'll need to spend more time on. More improvement needed there.

Did you learn any new skills or tricks?
	Sure did, I hadn't used .sort_by before this

How confident are you with each of the learning objectives?
	Getting pretty confident with this.

Which parts of the challenge did you enjoy?
	The research and the trial and error. Also making the code work better than what was asked for.

Which parts of the challenge did you find tedious?
	None

What did you learn about researching and explaining your research to others?
	A lot, I actually wrote my findings in my main blog: http://glubnerdglub.blogspot.com/2014/03/ruby-medians-sort-and-sortby.html

=end