# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

  def span
    return nil if self.empty?
    self.max - self.min
  end
  def average
    return nil if self.empty?
    self.sum / (self.length * 1.0)
  end
  def median
    return nil if self.empty?
    if self.length % 2 == 0
        mid1 = self.length / 2
        mid2 = self.length / 2 - 1
   return (self.sort[mid1] +  self.sort[mid2]) / 2.0
    else
        mid = self.length / 2
    return self.sort[mid]
    end
  end

  def counts
    hash = Hash.new(0)
    self.each do |ele|
        hash[ele] += 1
    end
    hash
  end
  def my_count(n)
    count = 0
    self.each do |ele|
        if ele == n
            count += 1
        end
    end
    count
  end
  def my_index(num)
    self.each_with_index do |ele, i|
        if ele == num
            return i
        end
    end
    nil
  end

  def my_uniq
    hash = Hash.new(0)
    newarr = []
    self.each do |ele|
        hash[ele] += 1
    end
    hash.each do |k, v|
        newarr << k
    end
    newarr
  end

  def my_transpose
    length = self.length
    newarr = []
    (0...length).each do |num|
        newline = []
        self.each do |ele|
            newline << ele[num]
        end
        newarr << newline
    end
    newarr
  end


end
