def partition(array, num)
small = []
big = []
new_array = []
array.each do |ele|
    if ele < num
        small << ele
    else
        big << ele
    end
end
    new_array << small 
    new_array << big
    new_array
end

def merge(hash1, hash2)
    newhash = Hash.new()
    hash1.each do |k, v|
        newhash[k] = v
    end
    hash2.each do |k,v|
        newhash[k] = v
    end
newhash
end

def censor(sent, array)
    sent1 = sent.split
    sent2 = sent1.map do |ele|
        if array.include?(ele.downcase)
            vowels?(ele)
        else
            ele
        end
    end
    sent2.join(" ")
end

def vowels?(word)
    vowels = "aeiouAEIOU"
    new_word = ""
    word.each_char do |ele|
        if vowels.include?(ele)
            new_word += "*"
        else
            new_word += ele
        end
    end
    new_word
end

def power_of_two?(num)
    (0..num).each do |ele|
        if 2**ele == num
            return true
        end
    end
false
end