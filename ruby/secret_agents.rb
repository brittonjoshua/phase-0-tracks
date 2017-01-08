#OUR METHODS DECLARATION

#Encrypts any string by shifting each letter up one letter.

def encrypt(str)
#assigns a range of letters, then joins them together
  alph = ("a".."z").to_a.join
 #shifts each character up 1 letter
  alph_rot = alph.chars.rotate(1).join
 #returns a copy of string after being shifted/joined.
  str.tr(alph, alph_rot)
end
#Decrypts any string that was previously encrypted by 
#shifting each letter down one letter.
def decrypt(str)
#assigns a range of letters, then joins them together
  alph = ("a".."z").to_a.join
  #shifts each character down 1 letter
  alph_rot = alph.chars.rotate(-1).join
  #returns a copy of string after being shifted/joined.
  str.tr(alph, alph_rot)
end

#OUR DRIVER CODE 
puts "Encrypt/Decrypt example:"
encrypt("abc")
 encrypt("zed")
 decrypt("bcd")
 decrypt("afe")
puts "How's it going? Would you like to decrypt or encrypt a message?"
	code_input=gets.chomp
puts "Whats the password?"
	password=gets.chomp
	if password="" && code_input="encrypt"
	  puts "type a word to encrypt:"
	    input=gets.chomp
	  encrypt(input)
	else password="" && code_input="decrypt"
	  puts "type a word to decrypt:"
	    input=gets.chomp
	  decrypt(input)
 end
 end