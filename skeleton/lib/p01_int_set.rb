
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

  def [](index)
    store[index % size] 
  end
  
  def include?(num)
    self[num].each do |int|
      return true if int == num      
    end
    false
  end
  
  def insert(num)
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end


  private

  # def [](num)
  #   # optional but useful; return the bucket corresponding to `num`
  # end

  # def num_buckets
  #   @store.length
  # end
end

class ResizingIntSet
  attr_reader :store, :size, :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @size = num_buckets
  end

  def [](index)
    store[index % size] 
  end

  def insert(num)
    unless self[num].include?(num)
      self[num] << num
      @count += 1
    end
  end

  def remove(num)

  end

  def include?(num)
    self[num].each do |int|
      return true if int == num      
    end
    false
  end

  private

  # def [](num)
  #   # optional but useful; return the bucket corresponding to `num`
  # end

  def num_buckets
    @store.length
  end

  def resize!
  end
end



# a = IntSet.new

# # a.insert(5)
# p a[5]

# p a




