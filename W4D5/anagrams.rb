# O(n!)
# def first_anagram?(str1,str2)
#     (str1.split("").permutation.to_a).include?(str2.split(""))
# end
# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# O(n^2)
# def second_anagram?(str1,str2)
#     str1.each_char.with_index do |char,i|
#         idx2 = str2.index(char)
#         return false if idx2.nil?
#         str2[idx2] = ""
#     end
#     str2.empty?
# end
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


