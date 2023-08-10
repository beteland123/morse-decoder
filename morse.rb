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

def decode_word(str)
  parts = str.split(" ")
  word = ""
  parts.each do |i|
    letter = decode_char(i)

    if letter
      word += letter
    end
  end
  word
end

def decode_words(words)
  words.split('   ').map { |word| decode_word(word) }.join(' ')
end

def decode(str)
  decoded_words = decode_words(str)
  puts decoded_words
end

decode("-- -.--   -. .- -- .")
decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

