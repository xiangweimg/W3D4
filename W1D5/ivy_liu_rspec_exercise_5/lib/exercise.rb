
def zip(*arr)
    # return arr.transpose
    length = arr.map(&:length).max
    result = []
        (0...length).each do |i|
            newarr = []
            arr.each do |ele|
                newarr << ele[i] 
            end
            result << newarr
        end
        result
end

def prizz_proc(arr, proc1, proc2)
    result = []
    arr.each do |ele|
        if (proc1.call(ele) || proc2.call(ele)) && !(proc1.call(ele) && proc2.call(ele))
            result << ele
        end
    end
    result
end

def zany_zip(*arr) #[[a,b], [c,d], [e, f, g]] => [[a, c, e], [b, d, f], [nil, nil, g]]
    length = arr.map(&:length).max
    newarr = Array.new(length) {[]}
    (0...length).each do |i|
        arr.each do |ele|
            newarr[i] << ele[i]
    end
        end
newarr
end

def maximum(arr, &block)
    arr.inject {|max, ele| block.call(max) > block.call(ele) ? max : ele}
end

def my_group_by(arr, &block)
    hash = Hash.new {|h,k| h[k] = []}
    arr.each do |ele|
        hash[block.call(ele)] << ele
    end
hash
end

def max_tie_breaker(arr,procs,&block)
      arr.inject { |max, ele| block.call(ele) == block.call(max) ? (procs.call(ele) > procs.call(max) ? ele : max) : (block.call(ele) > block.call(max) ? ele : max) }
end



def silly_syllables(sent)
    vowels="aeiouAEIOU"
    result = []
    sent.split.each do |ele| #cat and mouse
        if ele.count(vowels) < 2 #true then return cat
            result << ele
        else
            result <<  ele[firstvowel(ele)..lastvowel(ele)]
        end
    end
result.join(" ")
end

def firstvowel(word)
    vowels="aeiouAEIOU"
    word.split("").find_index { |ele| vowels.include?(ele) }
end

def lastvowel(word)
    vowels="aeiouAEIOU"
    word.split("").rindex { |ele| vowels.include?(ele) }
end

# def firstvowel(word)
#     vowels="aeiouAEIOU"
#     i = 0
#     while i < word.length - 1
#         if vowels.include?(word[i])
#             return i
#         end
#             i += 1
#     end
# end

p firstvowel("laststring")

# def lastvowel(word)
#     vowels="aeiouAEIOU"
#     i = word.length - 1
#     while i >= 0
#         if vowels.include?(word[i])
#             return  i
#         end
#         i -= 1
#     end
# end
p lastvowel("laststring")

