def proper_factors(num)
    array = []
    (1...num).each do |ele|
        if num % ele == 0
            array << ele
        end
    end
    array 
end

def aliquot_sum(num)
     proper_factors(num).sum
end

def perfect_number?(num)
    num == aliquot_sum(num)
end
def ideal_numbers(n)
    array = []
    i = 1
    while array.length < n
        if perfect_number?(i) 
        array << i
        end
    i += 1
end
array
end