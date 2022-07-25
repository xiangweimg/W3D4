def all_words_capitalized?(array)
    array.all? { |ele| ele[0] == ele[0].upcase && ele[1..-1] == ele[1..-1].downcase }
end

def no_valid_url?(array)
    ending = [".com", ".net", ".io", ".org"]
    array.none? do |ele| 
        ending.each do |factor|
            ele.end_with?(factor) 
    end
        end
end

def any_passing_students?(array)
array.any? { |ele| ele[:grades].sum / ele[:grades].length > 75 }
end
