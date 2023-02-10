$code = {A:".-", B:"-...", C:"-.-.", D:"-..", E:".", F:"..-.",
 G:"--.", H:"....", I:"..", J: ".---", K:"-.-", L:".-..",
 M:"--", N:"-.", O:"---", P:".--.", Q:"--.-", R:".-.",
 S:"...", T:"-", U:"..-", V:"...-", W:".--", X:"-..-",
 Y:"-.--", Z:"--.."}
$decoded_string=""
 def decode(string1)
    splited_array = string1.split(/ /,string1.length)
    splited_array.each { |i|
    $code.each {|key, value|
    if i == value 
      $decoded_string+=key.to_s 
    elsif i == ""
    $decoded_string+="\s"
    end
     }
}
 end

 decode string1
 $decoded_string