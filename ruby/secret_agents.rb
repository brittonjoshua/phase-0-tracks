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
 encrypt("abc")
 encrypt("zed")
 decrypt("bcd")
 decrypt("afe")