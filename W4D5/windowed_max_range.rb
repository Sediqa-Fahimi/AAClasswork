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

class 