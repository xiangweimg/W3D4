def reverser(string, &proc)
proc.call(string.reverse)
end

def word_changer(sent, &proc)
    sents= []
    sent.split.each do |ele|
  sents << proc.call(ele)
end
sents.join(" ")
end

def greater_proc_value(num, proc1, proc2)
result1 = proc1.call(num) 
result2 = proc2.call(num)
if result1 > result2
    return result1
else
    return result2
end
end

def and_selector(array, proc1, proc2)
new_array = []
array.each do |ele|
if proc1.call(ele) && proc2.call(ele)
    new_array << ele
end
end
new_array
end

def alternating_mapper(array, proc1, proc2)
new_array = []
(0..array.length - 1).each do |num|
    if num % 2 == 0
        new_array << proc1.call(array[num])
    else
        new_array << proc2.call(array[num])
    end
end
new_array
end