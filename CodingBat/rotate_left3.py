def rotate_left3(nums):
    new_set = []
    new_set.append(nums[1])
    new_set.append(nums[2])
    new_set.append(nums[0])
    return new_set

print "rotate_left3([1, 2, 3]) yields ", rotate_left3([1, 2, 3])
print "rotate_left3([5, 11, 9]) yields ", rotate_left3([5, 11, 9])
