class MaxIntSet

  attr_accessor :store

  def initialize(max)
    @store = Array.new(max) {false}
  end

  def size
    @store.length
  end
  
  def include?(num)
    raise "Out of bounds" if num < 0 || num > size - 1
    return store[num]
  end

  def insert(num)
    raise "Out of bounds" if num < 0 || num > size - 1
    store[num] = true
  end

  def remove(num)
    raise "Out of bounds" if num < 0 || num > size - 1
    store[num] = false
  end


  private

  def is_valid?(num)
    num.between?(0, size-1)
  end

  def validate!(num)
    
  end
end


class IntSet
  attr_reader :store, :size
  
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @size = num_buckets
  end
  


  def include?(num)

    store[num % size].include?(num)
    
  end
  
  def insert(num)
    store[num % size] << num
  end

  def remove(num)
    store[num % size].delete(num)
  end


  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end




