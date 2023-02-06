class MaxIntSet

  attr_accessor :store

  def initialize(max)
    @store = Array.new(max) {false}
  end

  def size
    @store.length
  end
  
  def include?(num)
    raise "size too too big" if num > size - 1 
    return store[num]
  end

  def insert(num)
    raise "size too small" if num < 0 || num > size - 1
    store[num] = true
  end

  def remove(num)
  end


  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
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




