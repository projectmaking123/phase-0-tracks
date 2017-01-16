def encrypt(letter)
  vowels = 'aeiou'
  v = vowels.split("")
  post_v = []
  
  i = 0
  
  while i < v.length
    if v[i] == "u" && v[i] == letter.to_s
      v[i] = "a"
      post_v << v[i]
    elsif
      v[i] == letter.to_s
      v[i] = v[i + 1]
      post_v << v[i]
    end
  i += 1
  end
 post_v[0]
end
 
  
def map_encrypt(str)
alph = "abcdefghijklmnopqrstuvwxyz".split('')

split_str = str.split('')
  arr = split_str.map do |letter|
    if letter == ("a" || "e" || "i" || "o" || "u")
      encrypt(letter)
    elsif 
     alph.include?(letter.downcase) == false
     ' '
    elsif letter.next == ("a" || "e" || "i" || "o" || "u")
      letter.next.next
    end
  end
 p arr
end

def name_swap(name)
  new_name = name.split(" ")
  rev_name = new_name[1] + " " + new_name[0]
  p map_encrypt(rev_name).join("")
end

name_swap("Felicia Torres")

#The first method I wrote swapped the first and last name by re-defining the positions.
#Then I wrote a method to reorganize the vowels, when the letter was looped to it.
#Once the vowel was triggered, it would be replaced by the next vowel in the vowel array. 
#I am stuck with how to produce the next letter after the vowel for non-vowels.