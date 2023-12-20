def contains_duplicate(nums)
  dic = Set.new

  nums.each do |num|
    return true if dic.include? num  
    dic << num 
  end

  return false
end
