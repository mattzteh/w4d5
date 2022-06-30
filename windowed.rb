require 'byebug'
def windowed_max_range(arr,window)
    subarrs = []
    diffs = []
    #create subarrs from arr with size of window
    #iterate through subarrs and get min and max
    #put difference of max and min into diffs array
    #sort diffs array and return diffs[-1]
  debugger
    (0..window).each do |i|
        new_arr = []
        (0...arr.length).each do |j|
            new_arr << arr[i...i+window]
        end
        subarrs << new_arr
    end
    subarrs

    
end

p windowed_max_range([1,2,3,4,5],2) 