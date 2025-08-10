# Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

# create alphabet arrays
smallcase_alphabets = ("a".."z")
upcase_alphabets = ("A".."Z")
alphabets = smallcase_alphabets.to_a + upcase_alphabets.to_a
# p alphabets

# # create alphabet mappings
# {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10, "k"=>11, "l"=>12, "m"=>13, "n"=>14, "o"=>15, "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, "w"=>23, "x"=>24, "y"=>25, "z"=>26, "A"=>27, "B"=>28, "C"=>29, "D"=>30, "E"=>31, "F"=>32, "G"=>33, "H"=>34, "I"=>35, "J"=>36, "K"=>37, "L"=>38, "M"=>39, "N"=>40, "O"=>41, "P"=>42, "Q"=>43, "R"=>44, "S"=>45, "T"=>46, "U"=>47, "V"=>48, "W"=>49, "X"=>50, "Y"=>51, "Z"=>52}

ALPHABET_DICTIONARY = {}
alphabets.each_with_index do |item, index|
  ALPHABET_DICTIONARY[item] = index + 1
end
# p ALPHABET_DICTIONARY

def caesar_cipher(string, shift_factor)
  char_array = string_to_array(string)
  number_arr = find_char_to_number_code(char_array)
  shifted_array = shift_right(number_arr, shift_factor)
  cipher_arr = shifted_char(shifted_array)
  p cipher_arr.join
end

def string_to_array(string)
  char_array = string.split("")
end

def find_char_to_number_code(char_array)
  number_arr = char_array.map do |char|
    if ALPHABET_DICTIONARY.include?(char)
      char = ALPHABET_DICTIONARY.values_at(char)
    else
      char
    end
  end
  p number_arr.flatten
  number_arr.flatten
end

def shift_right(number_array, shift_factor)
  shifted_arr = number_array.map do |num|
    if num.class == Integer
      shifted_value = num + shift_factor
      shifted_value -= 52 if shifted_value > 52
      shifted_value
    else
      num
    end
  end
end

def shifted_char(shifted_number_array)
  cipher_arr = shifted_number_array.map do |num|
    if num.class == Integer
      num = ALPHABET_DICTIONARY.key(num)
    else
      num
    end
  end
end

def decipher(string, shift_factor)
  char_array = string_to_array(string)
  number_arr = find_char_to_number_code(char_array)
  # unshifting of numbers
  unshifted_arr = number_arr.map do |num|
    if num.class == Integer
      shifted_value = num - shift_factor
      shifted_value += 52 if shifted_value < 1
      shifted_value
    else
      num
    end
  end
  decipher_arr = shifted_char(unshifted_arr)
  p decipher_arr.join
end

# caesar_cipher("Hello World!!", 5)
# decipher("Mjqqt btwqi!!",5)

# Alternatively a CLI-based interactive program:
# def askUser
#   puts "******************************************************"
#   puts "What do you want to do?"
#   puts "Choice-1: Generate a Cipher"
#   puts "Choice-2: Decipher a Cipher"
#   puts "Type '1' to choose option-1"
#   puts "Type '2' to choose option-2"
#   puts "Type 'Q' to quit right now"
#   choice = gets.chomp
#   if choice.strip.empty?
#     return puts "No user input provided, try again."
#   elsif choice == "1"
#     puts "******************************************************"
#     puts "Great! So you want to generate a Cipher!"
#     puts "The type of Cipher I will generate is called Caesar Cipher."
#     puts "I will shift the written characters by a specified shift factor."
#     puts "For example, if your text is 'A' and you choose a shift factor of 5, 'A' will shift by 5 places in alphabetical order. The Cipher will show 'F' instead of 'A'."
#     puts "First, provide your choice of text you want to convert to Cipher. And hit Enter."
#     raw_text = gets.chomp
#     if raw_text.strip.empty?
#       return puts "Text can't be blank. Quiting. Try again."
#     else
#       puts "Great, now provide a shift factor. A shift factor should be between 5-10."
#       shift_factor = gets.chomp
#         if shift_factor.strip.empty?
#           return puts "No input provided, try again."
#         else
#           shift_factor = shift_factor.to_i
#         end
#     end
#     puts "Your provided text is #{raw_text} with a shift factor of #{shift_factor}"
#     puts "Generating the cipher..."
#     puts "..."
#     puts "..."
#     return caesar_cipher(raw_text, shift_factor)
#   elsif choice == "2"
#     puts "******************************************************"
#     puts "Woah, so you have a Cipher and you want me to Decipher it. Great!"
#     puts "I will help you do that."
#     puts "I will need to two things from you: the text you want me to decipher and the shift factor. Shift factor is a numerical key."
#     puts "Provide the text you want to decipher. And hit Enter."
#     cipher_text = gets.chomp
#     if cipher_text.strip.empty?
#       return puts "No input provided, try again."
#     else
#       puts "Now provide the shift factor."
#       shift_factor = gets.chomp
#       if shift_factor.strip.empty?
#         return puts "No input provided, try again."
#       else
#         shift_factor = shift_factor.to_i
#     end
#   end
#     puts "Your provided cipher is #{cipher_text} with a shift factor of #{shift_factor}"
#     puts "Deciphering now..."
#     puts "..."
#     puts "..."
#     return decipher(cipher_text, shift_factor)
#   else
#     return
#   end
# end

# askUser()
