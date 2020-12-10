class Array
    def my_uniq
       new_array = []
       self.each { |element| new_array << element if !new_array.include?(element) }
       return new_array
    end

    def two_sum
        new_array = Array.new
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                new_array << [idx1, idx2] if (idx2 > idx1) && (ele1 + ele2 == 0)
            end
        end
        return new_array
    end
end

def my_transpose(array)
    new_array = Array.new(array.length) { [] }
    (0...array.length).each do |i|
        (0...array.length).each do |j|
            new_array[i] << array[j][i]
        end
    end
    return new_array
end
