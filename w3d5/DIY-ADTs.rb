#Exercise 1
class Stack
    def initialize
      @stack_array = []
    end


    def push(el)
      stack_array.push(el)
      el
    end

    def pop
      stack_array.pop(el)
    end

    def peek
      stack_array.last
    end

    private
    attr_reader :stack_array
end

#Exercise 2
class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    array.push(el)
    el
  end

  def dequeue
    array.shift
  end

  def peek
    array.first
  end

  private

  attr_reader :array
  
end

# EXERCISE 3
class Map
  def initialize
    @array = []
  end

  def set(key, value)
    pair = array.index { |pair| pair[0] == key }
    if pair
      array[pair][1] = value
    else
      array.push([key, value])
    end
    value
  end

  def get(key)
    array.each do |pair| 
      if pair[0] == key
        return pair[1] 
      end
    end
    nil
  end

  def delete(key)
    value = get(key)
    array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    arr.map { |el| el.is_a?(Array) }
  end

  private

  attr_reader :array
  
end