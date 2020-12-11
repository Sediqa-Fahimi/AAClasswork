# O (N ^ 2)
# def windowed_max_range(arr,window_size)
#     current_max_range = nil
#     i = 0 
#     while i + window_size <= arr.length # N times
#         sub_array = arr[i...i + window_size]
#         window_max = sub_array.max  # N times
#         window_min = sub_array.min  # N times
#         current_range = window_max - window_min  
#         if current_max_range.nil? || current_range > current_max_range
#             current_max_range = current_range
#         end
#         i += 1
#     end
#     current_max_range
# end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


class MyQueue
    def initialize
        @store = [] 
    end

    def size 
        @store.length
    end
    def empty?
        @store.length == 0
    end
    def enqueue(ele)
        @store.push(ele)    
    end
    def dequeue 
        @store.shift if !empty?
    end
    def peek
        @store[0] if !empty?
    end
end

class MyStack
    def initialize
        @store = []
    end

    def peek
        @store[-1] unless empty?
    end

    def size
        @store.length
    end

    def empty?
        @store.length == 0
    end

    def pop
        @store.pop unless empty?
    end

    def push(ele)
        @store.push(ele)
    end
end

class StackQueue 
    def initialize
        @push_stack = MyStack.new
        @pop_stack = MyStack.new
    end

    def size
        @push_stack.size + @pop_stack.size
    end

    def empty?
        size == 0
    end

    def enqueue(ele)
        @push_stack.push(ele)
    end

    def dequeue
        if @pop_stack.empty?
            # get the element from push stack
            # @pop_stack.push(@push_stack.pop) until @push_stack.empty?
            @push_stack.size.times{ @pop_stack.push(@push_stack.pop) }
        end
        @pop_stack.pop
        #enqueue onto push stack
        # so how do we move elements from push stack to pop stack to be popped?
    end
end


class MinMaxStack < MyStack
    def initialize
        super
        @max_stack = []
    end
    def push(ele)
        super
        if @max_stack.empty?
            @max_stack << ele
        elsif @max_stack.last > ele
            @max_stack << @max_stack.last
        else
            @max_stack << ele
        end
    end
    def pop
        @max_stack.pop
        super
    end
    def max
        @max_stack.last
    end

end