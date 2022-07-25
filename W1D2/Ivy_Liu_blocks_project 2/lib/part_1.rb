def select_even_nums(array)
    array.select(&:even?)
end

def reject_puppies(array)
array.reject { |h| h["age"] <= 2 }  
end
    
    
def count_positive_subarrays(array)
    array.count {|ele| ele.sum > 0}
end

def aba_translate(word)
    vowels = "aeiou"
    words = word.split("").map do |ele|
        if vowels.include?(ele)
           ele + "b" + ele
        else
            ele
        end
    end
words.join("")
end

def aba_array(array)
    new_arr = array.map { |ele| aba_translate(ele) }
end