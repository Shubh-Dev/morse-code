MORSE_MAP = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..'
}.freeze

def decode_char(str)
  MORSE_MAP.key(str).upcase
end

puts decode_char('.-')

def decode_word(str)
  str.split(' ').map { |char| decode_char(char) }.join
end

def decode_sentence(str)
  str.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode_sentence('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

puts decode_sentence('-- -.--   -. .- -- .')
