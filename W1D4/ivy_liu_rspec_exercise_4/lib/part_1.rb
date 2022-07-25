def my_reject(array, &block)
    result = []
    array.each do |ele|
        if !block.call(ele)
            result << ele
        end
    end
    result
end

def my_one?(array, &block)
    count = 0
    array.each do |ele|
       if block.call(ele)
        count += 1
       end
    end
    return false if count != 1
    return true if count = 1
end

def hash_select(hash, &block)
    hash1 = {}
    hash.each do |k,v|
        if block.call(k,v)
            hash1[k] = v
        end
    end
    return hash1
end

def xor_select(array, proc1, proc2)
    result = []
    array.each do |ele|
        if (proc1.call(ele) || proc2.call(ele)) && !(proc1.call(ele) && proc2.call(ele))
            result << ele
        end
    end
    result
end

def proc_count(value, proc)
  proc.count {|ele| ele.call(value)}
end