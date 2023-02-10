$morse_code = {A:".-", B:"-...", C:"-.-.", D:"-..", E:".", F:"..-.",
G:"--.", H:"....", I:"..", J: ".---", K:"-.-", L:".-..",
M:"--", N:"-.", O:"---", P:".--.", Q:"--.-", R:".-.",
S:"...", T:"-", U:"..-", V:"...-", W:".--", X:"-..-",
Y:"-.--", Z:"--.."} 


def decode_char (chr)
char = ''

$morse_code.each do 
	|key,value| 
	char = key.to_s if chr == value 
end
	char
end

decode_char("-...")