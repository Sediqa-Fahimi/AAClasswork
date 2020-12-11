def my_min(array)
    array.each do |el|
        return el if array.all? { |other_el| el <= other_el }
    end

end

def my_min2(array)
    min_so_far = array.first
    array.each do |el|
        min_so_far = el if el < min_so_far
    end
    min_so_far
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list)  # =>  -5

