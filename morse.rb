def decode_char(morse_code)
  morse_to_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_to_char[morse_code] || ""
end
puts decode_char('.-')

=begin
 Create a method to decode an entire word in Morse code, takes a string parameter, 
 and return the string representation. 
 Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").
=end

def decode_word(str)
  parts = str.split(" ")
  word = ""
  parts.each do |i|
    letter = decode_char(i)

    if letter
      word += letter
    end
  end
  puts word
end
decode_word("-- -.--")

def decode(str)
  words = str.split(" ")
  message = ""
  words.each do |word|
    decoded_word = decode_word(word)

    if decoded_word
      message += decoded_word 
    end
  end
  puts message.join('')
end
decode("-- -.--   -. .- -- .")
