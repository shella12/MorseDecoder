$morse_code = {A:".-", B:"-...", C:"-.-.", D:"-..", E:".", F:"..-.",
G:"--.", H:"....", I:"..", J: ".---", K:"-.-", L:".-..",
M:"--", N:"-.", O:"---", P:".--.", Q:"--.-", R:".-.",
S:"...", T:"-", U:"..-", V:"...-", W:".--", X:"-..-",
Y:"-.--", Z:"--.."} 

# character decoding method

def decode_char (chr)
char = ''

$morse_code.each do 
	|key,value| 
	char = key.to_s if chr == value 
end
	char
end

decode_char("-...")

# Word decoding method

def decode_word (word)
	decoded_word = ''
	word = word.split
	word.each do 
		|i|
		decoded_word += decode_char(i)
end
	decoded_word
end

decode_word ("-- -.--")