# character decoding method

def decode_char(chr)
  morse_code = { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.',
                 G: '--.', H: '....', I: '..', J: '.---', K: '-.-', L: '.-..',
                 M: '--', N: '-.', O: '---', P: '.--.', Q: '--.-', R: '.-.',
                 S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
                 Y: '-.--', Z: '--..' }

  morse_code.key(chr).to_s
end

decode_char('-...')

# Word decoding method

def decode_word(word)
  decoded_word = ''
  word = word.split
  word.each do |i|
    decoded_word += decode_char(i)
  end
  decoded_word
end

decode_word('-- -.--')

# Messsage decoding method

def decode_message(msg)
  decoded_msg = ''
  msg = msg.split('   ')

  msg.each do |word|
    decoded_msg += decode_word(word).concat('  ')
  end
  decoded_msg.strip
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
