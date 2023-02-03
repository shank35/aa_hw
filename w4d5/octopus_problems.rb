
def quadratic_biggest_fish(array)
  array.each_with_index do |ele1, idx1|
    max = true
    array.each_with_index do |ele2, idx2|
      next if ele1 == ele2
        if ele2.length > ele1.length
          max = false 
        end
    end
    if max
      return ele1 
    end
  end

end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }
    return self if self.count <= 1
    mid = self.length/2
    left = self[0...mid]
    right = self[mid..-1]
  
    left_sorted = left.merge_sort(&prc)
    right_sorted = right.merge_sort(&prc)
  
    Array.merge(left_sorted, right_sorted, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []
    while !left.empty? && !right.empty?
      if prc.call(left.first, right.first) == -1
        merged << left.shift
      else
        merged << right.shift
      end
    end
    merged + left + right
  end
end

def nlogn_biggest_fish(array)
  prc = Proc.new { |x, y| y.length <=> x.length }
  array.merge_sort(&prc)[0]
end

def linear_biggest_fish(array)
  biggest = array.first
  array.each do |ele|
    if ele.length > biggest.length
      biggest = ele
    end
  end
  biggest
end


def slow_dance(direction, array)
  array.each_with_index do |ele, index|
    if ele == direction
      return index 
    end
  end
end
