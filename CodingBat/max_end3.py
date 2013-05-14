def max_end3(nums):
    if nums[0] >= nums[-1]:
        i = nums[0]
    else:
        i = nums[-1]
    
    new_set = []
    new_set.append(i)
    new_set.append(i)
    new_set.append(i)
    return new_set
print "max_end3([1, 2, 3]) yields ", max_end3([1, 2, 3])
print "max_end3([11, 5, 9]) yields ", max_end3([11, 5, 9])
print "max_end3([2, 11, 3]) yields ", max_end3([2, 11, 3])
