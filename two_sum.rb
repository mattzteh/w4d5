
# def two_sum(arr, target_sum)
#     (0...arr.length).each do |i|
#         (i...arr.length).each do |j|
#             return true if arr[i] + arr[j] == target_sum
#         end
#     end
#     false
# end

# arr = [1,2,3,4,5]

# def okay_two_sum?(arr, target_sum)
#     sorted = arr.sort
#     (0...arr.length).each do |i|
#         new_target = target_sum - arr[i]
#         return true if bsearch(sorted[i + 1..-1], new_target)
#     end
#     false
# end

# def bsearch(arr, target)
#     return false if arr.empty?
#     return true if arr[0] == target && arr.length == 1

#     pivot = arr.length / 2
#     left = arr[0...pivot]
#     right = arr[pivot + 1..-1]
#     return true if arr[pivot] == target
#     if arr[pivot] > target
#         return bsearch(left, target)
#     end
#     if arr[pivot] < target
#         return bsearch(right, target)
#     end
    
# end

# def hash_map(arr, target_sum)
#     hash = arr.tally
#     (0...arr.length).each do |i|
#         target = target_sum - arr[i]
#         if hash.has_key?(target)
#             return true
#         end
#     end
#     false
# end

# p hash_map([3,2,1,4,6], 10)