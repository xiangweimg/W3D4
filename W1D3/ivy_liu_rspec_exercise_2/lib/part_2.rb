def palindrome?(string)
    new_string = ""
    i = string.length - 1
    while i >= 0
        new_string += string[i]
        i -= 1
    end
string == new_string
end

def substrings(string)
    array = []
    (0..string.length - 1).each do |num|
        (num..string.length - 1).each do |num2| #why cannot 0...string.length
            array << string[num..num2]
    end
end
    array
end

def palindrome_substrings(string)
    substrings(string).select {|ele| ele.length > 1 && palindrome?(ele)}
end