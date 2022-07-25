p "PHASE 1"
p "-----------------"
p "strange_sums"
p
def strange_sums(array)
    count = 0
    array.each_with_index do |ele1, idx1|
        array.each_with_index do |ele2, idx2|
        if idx2 > idx1 && ele1+ele2 == 0
            count += 1
        end
    end
end
count
end
p strange_sums([2, -3, 3, 4, -2])     # 2
p strange_sums([42, 3, -1, -42])      # 1
p strange_sums([-5, 5])               # 1
p strange_sums([19, 6, -3, -20])      # 0
p strange_sums([9])                   # 0

p "pair_product"
p 
def pair_product(array, product)
    array.each_with_index do |ele1, idx1|
        array.each_with_index do |ele2, idx2|
        if idx2 > idx1 && ele1 * ele2 == product
            return true
        end
    end
end
false
end
p pair_product([4, 2, 5, 8], 16)    # true
p pair_product([8, 1, 9, 3], 8)     # true
p pair_product([3, 4], 12)          # true
p pair_product([3, 4, 6, 2, 5], 12) # true
p pair_product([4, 2, 5, 7], 16)    # false
p pair_product([8, 4, 9, 3], 8)     # false
p pair_product([3], 12)             # false

p "rampant_repeats"
def rampant_repeats(string, hash)
    new_string = " "
        string.each_char do |ele|
            if hash[ele] 
                new_string += ele * hash[ele]
            else
                new_string += ele
            end
        end
    new_string
end

p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

p "perfect_square?"

def perfect_square(num)
    (0..num).each do |ele|
        if ele * ele == num
            return true
        end
    end
    false
end

p perfect_square(1)     # true
p perfect_square(4)     # true
p perfect_square(64)    # true
p perfect_square(100)   # true
p perfect_square(169)   # true
p perfect_square(2)     # false
p perfect_square(40)    # false
p perfect_square(32)    # false
p perfect_square(50)    # false

p "PHASE 2"
p "-----------------------"
p "anti_prime?"

def anti_prime?(num)
    array = [] #the last index should be num's factor counts
(0..num).each do |ele|
array << find_prime(ele)
end
if array.max == array[-1] 
    return true
end
false
end

def find_prime(num)
    (1..num).count {|n| num % n == 0}
end
p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false

p "matrix_addition"

def matrix_addition(m1, m2)
    height = m1[0].length
    length = m1.length
    new_arr = Array.new(length) { Array.new(height)}
    (0...length).each do |row|
        (0...height).each do |col|
            new_arr[row][col] = m1[row][col] + m2[row][col]
        end
    end
    new_arr
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]


p "mutual_factors"

def mutual_factors(*num)
 # num is an array [50, 30]
    array = []
    num.each do |ele|
        array << find_factor(ele) #2D array with all the factors
    end
    array.inject {|acc, el| acc & el}
    end
#     hash = Hash.new(0)
#         array.each do |ele1|
#            ele1.each do |ele2|
#             hash[ele2] += 1
#            end
#         end
#         hash.each do |k, v|
#             if v == array.length
#                 result << k
#             end
#         end
# return result
# end

def find_factor(num) # find each factor in an new array
    array = []
    (1..num).each do |ele|
        if num % ele == 0
            array << ele
        end
    end
    array
end

p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
p mutual_factors(8, 4)              # [1, 2, 4]
p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]

p "tribonacci_number"
def tribonacci_number(num)
    head = [1, 1, 2]
    return 1 if num == 1 || num == 2 
    return 2 if num == 3
    while head.length < num
        head << head[-1] + head[-2] + head[-3]
    end
    head[-1]
end

p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274

p "PHASE 3"
p "--------------"
# p 'matrix_addition_reloaded'
# p "not done"
# def matrix_addition_reloaded(*matrix)
#     width = matrix[0][0].length
#     height = matrix[0].length
#     return nil if matrix.any? {|ele| ele.length != height}
#     array = Array.new(height) {Array.new(width, 0)}
#     matrix.inject 
#     (0...height).each do |y|
#         (0...width).each do |x|
#             array[y][x] << matrix[y][x]
#         end
#     end
#     array
# end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil

# p "squarocol?"
# p "not done"
# def squarocol?(array)
#     return true if array.any? {|row| row.uniq.length == 1}
#     return true if array.transpose.any? { |col| col.uniq.length == 1}
#     false
# end

# p squarocol?([
#     [:a, :x , :d],
#     [:b, :x , :e],
#     [:c, :x , :f],
# ]) # true

# p squarocol?([
#     [:x, :y, :x],
#     [:x, :z, :x],
#     [:o, :o, :o],
# ]) # true

# p squarocol?([
#     [:o, :x , :o],
#     [:x, :o , :x],
#     [:o, :x , :o],
# ]) # false

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 7],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # true

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 0],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # false

p "squaragonal?"

def squaragonal?(array)
    return true if array.any? {|row| row.uniq.length == 1}
    return true if array.transpose.any? { |col| col.uniq.length == 1}
    return true if top?(array) || bottom?(array)
    false
end

def top?(array)
    i = 0 
    first = array[0][0] #x
    while i < array.length
        if first != array[i][i]
            return false 
        else 
            i += 1
    end
end
true
end

def bottom?(array)
    i = 0
    x =  array.length - 1
    last = array[i][x]
    while i < array.length
        if last != array[i][x]
            return false
        else
            i += 1
            x -= 1
        end
    end
    true
end

p squaragonal?([
    [:x, :y, :o],
    [:x, :x, :x],
    [:o, :o, :x],
]) # true

p squaragonal?([
    [:x, :y, :o],
    [:x, :o, :x],
    [:o, :o, :x],
]) # true

p squaragonal?([
    [1, 2, 2, 7],
    [1, 1, 6, 7],
    [0, 5, 1, 7],
    [4, 2, 9, 1],
]) # true

p squaragonal?([
    [1, 2, 2, 5],
    [1, 6, 5, 0],
    [0, 2, 2, 7],
    [5, 2, 9, 7],
]) # false

# p "pascals_triangle"
# def pascals_triangle(num)
# head = [[1],
# [1]
#     return [1] if num == 1 
#     return [1, 1] if num == 2 
#     while head.length < num

#     end
    
# end

# p pascals_triangle(5)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1]
# # ]

# p pascals_triangle(7)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1],
# #     [1, 5, 10, 10, 5, 1],
# #     [1, 6, 15, 20, 15, 6, 1]
# # ]


p "PHASE 4"
p "------------------"

p "mersenne_prime"

def mersenne_prime(num)
    array = []
    i = 3
    while array.length < num
        if prime?(i) && is_prime(i)
            array << i
        end
        i += 1
    end
    array[-1]
    # x = -1
    # count = 0
    # while count < num
    #     x += 1
    #     candidate = 2**x - 1
    #     count += 1 if is_prime(candidate)
    # end
    # 2**x - 1
end

def prime?(num)
    (0..num).each do |ele|
        if (2 ** ele) - 1 == num
            return true
        end
    end
    false
end

def is_prime(num)
    (2...num).each do |ele|
        if num % ele == 0
            return false
        end
    end
    true
end

p mersenne_prime(1) # 3
p mersenne_prime(2) # 7
p mersenne_prime(3) # 31
p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071


p "triangular_word?"
# def triangular_word?(string)

# end

p "consecutive_collapse"
def consecutive_collapse(array)

end

# p consecutive_collapse([3, 4, 1])                     # [1]
# p consecutive_collapse([1, 4, 3, 7])                  # [1, 7]
# p consecutive_collapse([9, 8, 2])                     # [2]
# p consecutive_collapse([9, 8, 4, 5, 6])               # [6]
# p consecutive_collapse([1, 9, 8, 6, 4, 5, 7, 9, 2])   # [1, 9, 2]
# p consecutive_collapse([3, 5, 6, 2, 1])               # [1]
# p consecutive_collapse([5, 7, 9, 9])                  # [5, 7, 9, 9]
# p consecutive_collapse([13, 11, 12, 12])              # []

p "pretentious_primes"

def pretentious_primes(array, n)

end
# p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
# p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
# p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
# p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
# p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
# p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
# p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
# p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
# p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
# p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]