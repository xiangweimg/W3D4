p "phase 1"

# def duos(string)
#     count = 0
#     string.each_char.with_index do |char, idx|
#         if char == string[idx + 1] #o
#             count += 1
#         end
#     end
#     count
# end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0

# def sentence_swap(sent, hash)
#     sent1 = sent.split #array
#     result = []
#         sent1.each do |ele|
#          if hash[ele]
#             result << hash[ele]
#          else
#             result << ele
#          end
#       end 
# result.join(" ")
# end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'

# p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
# ) # 'keep running okay'

# def hash_mapped(hash, proc, &block)
#     hash1 = Hash.new()
#     hash.each do |k, v|
#         hash1[block.call(k)] = proc.call(v)
#     end
#     hash1
# end
# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

# def counted_characters(string)
#     hash = Hash.new(0)
#     result = []
#     string.each_char do |char|
#         hash[char] += 1
#     end
#     hash.each do |k, v|
#         if v > 2
#           result << k  
#         end
#     end
#     return result
# end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []

# def triplet_true(string)
#     (0...string.length - 2).each do |i|
#        return true if string[i] == string[i + 1] && string[i + 1] == string[i + 2]
#         end
#     false
# end
# p triplet_true('caaabb')        # true
# p triplet_true('terrrrrible')   # true
# p triplet_true('runninggg')     # true
# p triplet_true('bootcamp')      # false
# p triplet_true('e')             # false

# def energetic_encoding(string, hash)
#     string.each_char.with_index do |char, i|
#             if hash[char]
#                 string[i] = hash[char]
#             elsif char == " "
#                 string[i] = " "
#             else
#                 string[i] = "?"
#             end
#     end
#     return string
# end
# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) # 'zimp ziu'

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {}) # '????'

# def uncompress(string)
#     i = 0
#     newstring = ""
#     while i < string.length - 1
#        (string[i + 1]).to_i.times{newstring += string[i]}
#        i += 2
#     end
#     return newstring
# end
# p uncompress('a2b4c1') # 'aabbbbc'
# p uncompress('b1o2t1') # 'boot'
# p uncompress('x3y1x2z4') # 'xxxyxxzzzz'

p "phase 2"
p "----------------"

# def conjunct_select(array, *procs)
#     result = []
#     array.each do |ele|
#             if procs.all? {|block|block.call(ele)}
#                 result << ele
#             end
#     end
#     result
# end

# is_positive = Proc.new { |n| n > 0 }
# is_odd = Proc.new { |n| n.odd? }
# less_than_ten = Proc.new { |n| n < 10 }

# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]


# def convert_pig_latin(sent)
#     word = sent.split
#     newsent = []
#     vowels = "aeiouAEIOU"
#     word.each do |ele|
#         if ele.length < 3
#             newsent << ele
#         elsif vowels.include?(ele[0])
#             newsent << ele + "yay"
#         elsif ele[0] == ele[0].upcase
#             newsent << ele[firstvowel(ele)..-1].capitalize + ele[0...firstvowel(ele)].downcase + "ay"
#         else
#             newsent << ele[firstvowel(ele)..-1] + ele[0...firstvowel(ele)] + "ay"
#         end
#     end
#     newsent.join(" ")
# end


# def firstvowel(word)
#     vowels = "aeiouAEIOU"
#     word.split("").find_index { |ele| vowels.include?(ele) }
# end


# p convert_pig_latin('We like to eat bananas') # "We ikelay to eatyay ananasbay"
# p convert_pig_latin('I cannot find the trash') # "I annotcay indfay ethay ashtray"
# p convert_pig_latin('What an interesting problem') # "Atwhay an interestingyay oblempray"
# p convert_pig_latin('Her family flew to France') # "Erhay amilyfay ewflay to Ancefray"
# p convert_pig_latin('Our family flew to France') # "Ouryay amilyfay ewflay to Ancefray"


def reverberate(sent)
    word = sent.split
    newsent = []
    vowels = "aeiouAEIOU"
    word.each do |ele| 
        if ele.length < 3
            newsent << ele
        elsif vowels.include?(ele[-1])
            newsent << ele * 2
        elsif ele[0] == ele[0].upcase
            newsent << ele[lastvowel(ele)..-1].capitalize + ele[0...lastvowel(ele)].downcase + "ay"
        else
            newsent << ele[lastvowel(ele)..-1] + ele[0...lastvowel(ele)] + "ay"
        end
    end
    newsent.join(" ")
end

def lastvowel(word)
    vowels = "aeiouAEIOU"
    word.split("").rindex { |ele| vowels.include?(ele) }
end
p reverberate('We like to go running fast') # "We likelike to go runninging fastast"
p reverberate('He cannot find the trash') # "He cannotot findind thethe trashash"
p reverberate('Pasta is my favorite dish') # "Pastapasta is my favoritefavorite dishish"
p reverberate('Her family flew to France') # "Herer familyily flewew to Francefrance"

# def disjunct_select(array, *procs)
#     result = []
#     array.each do |ele|
#     result << ele if procs.any? {|block| block.call(ele)}
#     end
#     result
# end

# longer_four = Proc.new { |s| s.length > 4 }
# contains_o = Proc.new { |s| s.include?('o') }
# starts_a = Proc.new { |s| s[0] == 'a' }

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
# ) # ["apple", "teeming"]

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
#     contains_o
# ) # ["dog", "apple", "teeming", "boot"]

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
#     contains_o,
#     starts_a
# ) # ["ace", "dog", "apple", "teeming", "boot"]

# def alternating_vowel(sent)
#     sent1 = sent.split(" ")
#     result = sent1.map.with_index  do |ele, idx|
#             idx.even? ? remove_first_vowel(ele) : remove_last_vowel(ele)
#         end
#     result.join(" ")
# end


# def remove_first_vowel(word)
#     vowels = "aeiouAEIOU"
#     word.each_char.with_index do |ele, i|
#         if vowels.include?(ele)
#             return word[0...i] + word[i + 1..-1]
#         end
#     end
#     word
# end

# def remove_last_vowel(word)
#     remove_first_vowel(word.reverse).reverse
# end

# p alternating_vowel('panthers are great animals') # "pnthers ar grat animls"
# p alternating_vowel('running panthers are epic') # "rnning panthrs re epc"
# p alternating_vowel('code properly please') # "cde proprly plase"
# p alternating_vowel('my forecast predicts rain today') # "my forecst prdicts ran tday"


def silly_talk(sent)

end
p silly_talk('Kids like cats and dogs') # "Kibids likee cabats aband dobogs"
p silly_talk('Stop that scooter') # "Stobop thabat scobooboteber"
p silly_talk('They can code') # "Thebey caban codee"
p silly_talk('He flew to Italy') # "Hee flebew too Ibitabaly"

# def compress(string)
#     newstring = ""
#     i = 0
#    while i < string.length
#         char = string[i]
#         count = 0
#             while char == string [i]
#                 count += 1
#                 i += 1
#             end

#             if count > 1
#                 newstring += char + count.to_s
#             else
#                 newstring += char
#             end
#     end
#    newstring
# end
# p compress('aabbbbc')   # "a2b4c"
# p compress('boot')      # "bo2t"
# p compress('xxxyxxzzzz')# "x3yx2z4"