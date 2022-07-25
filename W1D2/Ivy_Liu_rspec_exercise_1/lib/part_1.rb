def average(num1, num2)
 (num1 + num2) / 2.0
end

def average_array(array)
array.sum / (array.length * 1.0)
end

def repeat(string, number)
    new_str = ""
    number.times {new_str += string}
    new_str
end

def yell(string)
string.upcase + "!"
end

def alternating_case(sentence)
    sen1 = sentence.split.each_with_index.map do |ele, i|
        if i % 2 == 0
        ele.upcase
        else
        ele.downcase
        end
    end
    sen1.join(" ")
end