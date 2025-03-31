

func divideArrayIntoEqualSumSubArray(_ nums: inout [Int]) -> Int {
    var sum = 0
    
    for num in nums {
        sum += num
    }
     print("sum \(sum)")
    for index in 1..<(nums.count) {
        nums[index] = nums[index] + nums[index - 1]
        if nums[index] == sum - nums[index] {
            return index
        }
        print("number at index \(index) \(nums[index]) sum \(sum - nums[index])")
    }
    return 0
}

var array = [4,-2, 5, 8, 20, -10, 8]
var array2 = [3,4,-2,5,8,20,-10,8]
print(divideArrayIntoEqualSumSubArray(&array))
print(divideArrayIntoEqualSumSubArray(&array2))
