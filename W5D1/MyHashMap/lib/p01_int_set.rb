require "byebug"

class MaxIntSet
  attr_accessor :store
  def initialize(max)
    @max = max
    @store = []
  end

  def insert(num)
    raise 'Out of bounds' if !is_valid?(num) 
    @store[num] = true
  end

  def remove(num)
    @store[num] = false if self.include?(num)
  end

  def include?(num)
    return true if @store[num] == true
    false
  end

  private

  def is_valid?(num)
    return false if num >= @max || num < 0
    true
  end

  def validate!(num)
  end
end


class IntSet
  attr_writer :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    index = num % num_buckets
    @store[index] << num
  end

  def remove(num)
    index = num % num_buckets
    @store[index].delete(num)
  end

  def include?(num)
    return true if @store.any? { |arr| arr.include?(num) }
    false
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
  attr_accessor :count
  attr_accessor :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if @count < num_buckets
      idx = num % num_buckets
      if !self.include?(num) 
        @store[idx] << num
        @count += 1
      end
    else  
      resize! 
    end
  end

  def remove(num)
    if self.include?(num)
      @store.each do |array|
        if array.include?(num)
          array.delete(num)
        end
      end
      @count -= 1
    end
  end

  def include?(num)
    return true if @store.any? { |array| array.include?(num) }
    false
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  # def resize!
  #   num_buckets.times { @store << [] }
  #   @store.each do |subarr| 
  #     subarr.each do |ele| 
  #       new_idx = ele % num_buckets
  #       @store[new_idx] << ele
  #     end
  #   end
  # end
  def resize!
    if @count > self.num_buckets 
      debugger
      new_size = (self.num_buckets * 2)
      new_arr = Array.new(new_size) { Array.new }
      @store.each do |ele| 
        ele.each do |item| 
          new_idx = item % new_size
          new_arr[new_idx] << item
        end
      end
      new_arr
    end
  end
end

# a = ResizingIntSet.new(5)

# a.insert(1)
# a.insert(2)
# a.insert(3)
# a.insert(4)
# a.insert(5)
# a.insert(6)