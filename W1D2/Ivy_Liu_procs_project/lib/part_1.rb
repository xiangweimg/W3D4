def my_map(array, &block)
    new_array = []
    array.each do |ele|
        new_array << block.call(ele)
    end
    new_array
end

def my_select(array, &prc)
    select = []
    array.each do |ele|
        if prc.call(ele)
        select << ele
    end
end
    select
end

def my_count(array, &block)
count = 0
array.each do |ele|
    if block.call(ele)
        count += 1
    end
    end
    count
end

def my_any?(array, &block)
    array.each do |ele|
        if block.call(ele)
             return true
        end
    end
    return false
end

def my_all?(array, &block)
array.each do |ele|
    if !block.call(ele)
return false
    end
end
return true
end

def my_none?(array, &block)
 array.each do |ele|
    if block.call(ele)
        return false
    end
 end
 return true 
end
