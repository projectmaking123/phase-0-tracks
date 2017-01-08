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
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts "How's it going? Whats the password?"
	password=gets.chomp
puts "Would you like to decrypt or encrypt a message?"
	input=gets.chomp
	if input=="encrypt"
		puts "type a word to encrypt:"
	    	encrypted_word=gets.chomp
		puts encrypt(encrypted_word)
	else puts "type a word to decrypt:"
		  decrypted_word=gets.chomp
	puts decrypt(decrypted_word)		  
 end
 puts "until next time..."