#launch school example ruby conditionals and loop

puts "Enter a number"
num = gets.chomp.to_i

if num ==3
    puts "we are in business"
elsif num == 4
    puts "we going to make a profit"
else 
    puts "sometimes in business you make a loss!"
end 

y = 0
loop do
    puts "y is #{y}"
    y += 1
    break if y == 15
end

k = 0
while k < 10 do
    puts "k is #{k}"
    k += 1
end

puts "question regarding destination!"
while gets.chomp != "yes" do
    puts "are we there yet?"
end

until gets.chomp == "yes" do
    puts "Have we arrived yet?"
end

j = 0
until j >= 10 do 
    puts "j is #{j}"
    j += 1
end

puts "countdown"
l = 10
until l <= 0 do
    puts "l is #{l}"
    l -=1
end
# range didnt work
puts (1..5)
puts (1...5)
puts ("A".."E")
puts ("A"..."E")

#for loop
for i in 0 ..5
    puts "#{i} zombies incoming!"
end

5.times do
    puts "hello world!"
    puts "we are going to change the world for the better!"
end

5.times do
    |number|
    puts "alternative fact number #{number}"
end

# array section
puts "we are begining with the array section!"
puts Array.new
puts Array.new(3)
puts Array.new(3,7)
puts Array.new(3,true)

stri_array = ["this", "one", "tayo", "small","micky"]
puts stri_array[0]
puts stri_array[-1]
puts stri_array.first
print stri_array.first(2)
print stri_array.last(2)
print stri_array.push("mathe", "lasteed","redw")
puts stri_array.pop
print stri_array.unshift("wale","tolani", "wahab")
puts stri_array.shift

puts stri_array.length
print stri_array.reverse
puts stri_array.include?("wasiu")
puts stri_array.include?("tolani")
puts stri_array.join("-")


a = [1,2,3,4]
puts a.map{|num| num**2}
puts a.collect {|num| num**2}


puts "\n"
puts "\n"
puts "deletes permanently"
puts "\n"
print my_pets = ["cats", "dog", "bird", "cat", "snake"]
puts "\n"
print my_pets.delete_at(0)
puts "\n"
print my_pets.delete("bird")
puts "\n"

puts "eliminate redundant items"
print examples_items =[1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,5,5,5,7,7,6,8,8,8,9,9,9,0,0,0]
puts "\n"
puts "\n"
print examples_items.uniq
puts "\n"
puts "\n"
puts "iterating over array"
puts "\n"
puts "\n"
print numbers_examples = [1,2,3,4,5,6,7,8,9,10,11,12,13] 
puts "\n"
puts "\n"
print numbers_examples.select{|num| num > 4}
puts "\n"
puts "\n"
puts "method examples"
def mutate (arr)
    arr.pop
end

def not_mutate(arr)
    arr.select{|i| i > 3}
end

def double(arr)
    arr.map do
    |nums|
    puts nums * 2
    end
end

print example_num_arr = [1,2,3,4,5,6]
puts "\n"
print mutate(example_num_arr)
puts "\n"
print not_mutate(example_num_arr)
puts "\n"
print double(example_num_arr)
puts "\n"

puts "example_num_arr" 

puts "example for nested arrays"
puts "\n"

print teams = [["joe", "steve"], ["taiwo", "frank"], ["vincent", "sara"]]
puts "\n"
print teams[1]
puts "\n"
puts "new output"
puts "\n"
print teams[0]
puts "\n"
print teams.flatten
puts "\n"
d = [1,2,3]
puts "it\'s as easy as #{d}"
puts "\n"
puts "\n"
names = ['bob', 'joe', 'janice', 'susan', 'helen']
names.each do
    |name|
    puts name + " " + "is a name of a person!"
end
puts "\n"
puts "\n"
puts "map method on multiple lines"
a = [1,2,3,4]
a.map do
  |nums|
  puts nums + 2
end
puts "\n"
puts "\n"

puts "example of sort"
print nums1 = [9,7,5,8,6,2,1,4,3,10,15,12,11,13,0]
puts "\n"
puts "\n"
print nums1.sort
puts "\n"
puts "\n"


i = 0

loop do
    i = i + 2
    if i == 4
        next
    end 
    puts i

    if i == 10
        break
    end 
end 


x = gets.chomp.to_i

while x >= 0
    puts x
    x -= 1
end 

puts "done!"

puts "\n"

y = gets.chomp.to_i

until y < 0
    puts "y is #{y}"
    y -= 1
end 

puts "done!"
puts "\n"


puts "hash session"

my_hash = {
    "a random word" => "ahoy",
    "doroth's math test score" => 94,
    "an array" => [1,2,3,4],
    "an empty hash within a hash" => {}
}

puts my_hash ["a random word"]
puts "\n"


shoes = {
    "summer" => "sandals",
    "winter" => "boots",
    "autum" => "slippers",
    "spring" => "flipflops"
}

puts shoes["spring"]
puts shoes["sports"]

#to raise an error if requested key is not in hash
#shoes.fetch("sports")
#to raise a default value
puts shoes.fetch("sports", "soccer boots")

puts "\n"

#adding to a hash
shoes["fall"] = "sneakers"
shoes["summer"] = "beach footwear"
puts shoes
puts "\n"


#merging harshes
hash_1 = {
    "a" => 23,
    "b" => 100,
    "c" => 250
}

hash_2 = {
    "c" => 256,
    "d" => 34
}

puts hash_1.merge(hash_2)
puts "\n"

#rocket syntax

american_cars = {
    :chevrolet => "corvette",
    :ford => "mustang",
    :dodge => "ram"
}
american_cars[:aton]="faster"

#symbol syntax
japanese_cars = {
    honda: "accord",
    toyota: "corolla",
    nissan: "altima"
}
japanese_cars[:suzuki] = "yamaha"

#iterating over a hash
japanese_cars.each do
    |key, value|
    puts "i love #{key}, you should try the #{value}! as its fast"
end

puts "example from launch school"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
         }
imm_fam = family.select do |key, value|
    key == :sisters || key == :brothers

end
puts arr = imm_fam.values.flatten


#b = 8

#case b
#when 5
 #   puts "b is 5"
#when 6
 #   puts "b is 6"
#else 
 #   puts "b is neither 5 nor 6"
#end

#true ? "this is true" : "this false"

#false ? "this is true" : "this is false"

 #  puts "put in a number"
 #   a = gets.chomp.to_i

  #  if a == 3
   #     puts "a is 3"
    #elsif a == 4
     #   puts "a is 4"
#
 #   else 
  #      puts "a is neither 3 or 4"
   # end
