def is_prime?(num)
    return false if num < 2
    (2...num).each do |ele|
        if num % ele == 0
            return false
        end
    end
    true
end

def nth_prime(n)
    array = []
    i = 2
    while array.length < n 
        if is_prime?(i)
            array << i
        end
        i += 1
    end
    array[-1]
end

def prime_range(min, max)
    array = []
    (min..max).each do |ele|
        if is_prime?(ele)
            array << ele
        end
    end
    array
end