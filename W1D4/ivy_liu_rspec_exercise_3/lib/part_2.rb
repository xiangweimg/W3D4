def element_count(array)
    hash = Hash.new(0)
    array.each do |ele|
        hash[ele] += 1
    end
    hash
end

def char_replace!(string, hash)
    string.each_char do |char|
        hash.each do |k, v|
            if hash[char]
                string[char] = hash[k]
            end
        end
    end
    string
end

def product_inject(array)
    return array.inject {|acc, el| acc * el}
end