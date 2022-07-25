# Define your methods here. 
def first_letter_vowel_count(sent)
    vowels = "aeiouAEIOU"
    sent1 = sent.split
    count = 0
    sent1.each do |ele|
        if vowels.include?(ele[0])
            count += 1
        end
    end
    count
end

def count_true(array, proc)
    count = 0
    array.each do |ele|
        if proc.call(ele)
           count += 1
        end
    end
    count
end

def procformation(arr, proc1, proc2, proc3)
    array = []
    arr.each do |ele|
        if proc1.call(ele)
            array << proc2.call(ele)
        else
            array <<proc3.call(ele)
        end
    end
    array
end

def array_of_array_sum(array)
    calc = array.flatten
    return calc.sum
end

def selective_reverse(sent)
    vowels = "aeiouAEIOU"
    sent1 = sent.split
    result = []
    sent1.each do |ele|
        if vowels.include?(ele[0]) || vowels.include?(ele[-1])
            result << ele
        else
            result << ele.reverse
        end
    end
    result.join(" ")
end

def hash_missing_keys(hash, *other)
    result = []
    hash.each do |k,v|
        other.each do |ele|
            if !hash[ele]
                result << ele
            end
        end
    end
result.uniq
end