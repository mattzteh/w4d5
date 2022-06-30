
# def my_min(arr)

#     sorted = false
#     while !sorted
#         sorted = true
#         (0...arr.length-1).each do |i|
#             if arr[i] > arr[i+1]
#                 arr[i],arr[i+1] = arr[i+1],arr[i]
#                 sorted = false
#             end
#         end
#     end
#     arr[0]

# end

# def my_min2(arr)
#     min = arr[0]
#     arr.each do |ele|
#         if ele < min
#             min = ele
#         end
#     end
#     min
# end

# def largest_contiguous_subsum1(arr)
#     new_arr = []
#     sum = 0
#     (0...arr.length).each do |i|
#         (i...arr.length).each do |j|
#             if arr[i..j].sum > sum
#                 sum = arr[i..j].sum
#             end
#         end
#     end
#     sum
# end

def largest_contiguous_subsum2(arr)

    longest_sum = 0
    curr_sum = 0
    arr.each_index do |idx|
        curr_sum += arr[idx]
        if curr_sum < 0
            curr_sum = 0
        end
        if longest_sum < curr_sum
            longest_sum = curr_sum
        end
    end
    longest_sum
end

list = [2, 3, -6, 7, -6, 7]

p largest_contiguous_subsum2(list)