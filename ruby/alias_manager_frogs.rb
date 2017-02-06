##Assignment 5.5 Manipulating Strings with iterations.
#create a fake name for a spy.
#swap a spies name (first and last)
#Change all vowels(a,e,i,o,u) to the next vowel.
#Change all the consonents to the next consonent.

def spyname(real_name)
  spy_array = []
    split_name = real_name.reverse.split('')
      split_name.join.chars
    split_name.map! do|name|
      name.tr!("aeiouAEIUO","eiouaEIOUA")
    name.tr!("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ","cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB")
  spy_array << name.to_str
end
 p spy_array.join
end

##DRIVER CODE 
## Allow user to enter real name and get spy name in return.
## allow them to do this until they quit.

spyname_array =[]
loop do
  puts "Would you like to get a spyname? If so, enter first and last name. If completed, type \"\done\"\:"
real_name = gets.chomp
spyname_array<< spyname(real_name)
  if real_name == "done"
    break
  end
end
puts "here's the list of spynames: #{spyname_array}."