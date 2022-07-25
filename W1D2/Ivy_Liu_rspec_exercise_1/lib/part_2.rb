def hipsterfy(word)
  vowels = "aeiou"
  i = word.length - 1
 while i >= 0
if vowels.include?(word[i])
    return word[0...i] + word[i + 1..-1]
end
    i -= 1
end
 word
end

def vowel_counts(string)
    hash1 = Hash.new(0)
    vowels = "aeiou"
    string.each_char do |ele|
        if vowels.include?(ele.downcase)
            hash1[ele.downcase] += 1
        end
    end
    hash1
end

def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    message.each_char.with_index do |char, idx|
        if alphabet.include?(char)
            oldindex = alphabet.index(char)
            newindex = (oldindex + n) % 26
            message[idx] = alphabet[newindex]
        end
    end
message
end