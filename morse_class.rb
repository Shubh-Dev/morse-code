require_relative './morse'
class Morse 
   MORSE_MAP = MORSE_MAP.freeze
   
   def decode_char(str)
    MORSE_MAP.key(str).upcase
   end

   def decode_word(str)
    str.split(' ').map { |char| decode_char(char) }.join
   end

   def decode_sentence(str)
    str.split('   ').map { |word| decode_word(word) }.join(' ')
   end
end

morse = Morse.new()
puts morse.decode_char('..-')
puts morse.decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.')
puts morse.decode_sentence('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
