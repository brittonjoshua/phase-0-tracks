##Assignment 5.5 Manipulating Strings with iterations.
#create a fake name for a spy.
#swap a spies name (first and last)
#Change all vowels(a,e,i,o,u) to the next vowel.
#Change all the consonents to the next consonent.

spynames=[]
puts "would you like to create a spyname?"
  input=gets.chomp
while input=="yes"

puts"Enter your first and last name:"
  input_name=gets.chomp


  full_name="#{input_name}".split()
    full_name.reverse!
      full_name.map! do|name|
        name.split()
      name.tr!("aeiouAEIUO","eiouaEIOUA")
    name.tr!("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ","cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB")
          name.to_str
  puts "Your spyname is:" 
  p name
    spynames.push("#{name}")
  puts "Would you like to create another spyname?"
    input=gets.chomp
  end
end
puts "Ok, here's some of your spynames in a really random array:"
p spynames
