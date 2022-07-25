# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
(2..num).reverse_each do |ele|
    if num % ele == 0 && prime(ele)
        return ele
    end
end
end

def prime(word)
    if word < 2
      return false
    end
    
    (2...word).each do |num|
      if word % num == 0
      return false
    end
  end
  return true
  end

def unique_chars?(string)
count = Hash.new(0)
string.each_char do |char|
    count[char] += 1
end
count.each do |k, v|
    if v >= 2
        return false
    end
end
return true
end

def dupe_indices(array)
hash = Hash.new{|h, k| h[k] = []}

array.each_with_index do |ele, i|
if array.count(ele) > 1
    hash[ele] << i 
end
end
hash
end

def ana_array(arr1, arr2)
count(arr1) == count(arr2)
end

def count(word)
    hash1 = Hash.new(0)
word.each do |ele1|
    hash1[ele1] += 1
end
hash1
end