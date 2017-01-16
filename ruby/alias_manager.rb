##Assignment 5.5 Manipulating Strings with iterations.
#create a fake name for a spy.
#swap a spies name (first and last)
#Change all vowels(a,e,i,o,u) to the next vowel.
#Change all the consonents to the next consonent.

puts"Enter your first and last name:"
  input_name=gets.chomp


full_name="#{input_name}".split()
  full_name.reverse!
  full_name.map! do|name|
    name.split()
      name.tr!("aeiouAEIUO","eiouaEIOUA")
      name.tr!("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ","cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB")
   p name.to_str
end