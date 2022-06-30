
def first_anagram?(str1, str2)
    word1 = str1.split("")
    arr = word1.permutation.to_a
    word2 = str2.split("")
    if arr.include?(word2)
        return true
    else
        return false
    end
end

def second_anagram?(str1, str2)
    str1.each_char do |char|
        if str2.include?(char)
            str2.delete!(char)
        end
    end
    if str2.empty?
        return true
    else
        return false
    end
end

def third_anagram?(str1, str2)
    sorted1 = str1.sort
    sorted2 = str2.sort
    sorted1 == sorted2
end

def fourth_anagram?(str1, str2)
    hash1 = str1.split("").tally
    hash2 = str2.split("").tally
    hash1 == hash2  
end



