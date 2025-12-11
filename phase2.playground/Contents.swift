import UIKit

var names: [String] = ["Kartik", "Kaushik"]

var numbers = [1,-3,50,72,-934,2309]
print(type(of: numbers))

// int 8
var nums: [Int8] = [127,1]

if numbers.contains(5)
{
    print("yes")
}
else{
    print("no")
}


var arr: [Int] = []

var arr2: Array<Int> = []

var nums2 = [Int]()


//

var someArr = [Int](repeating: 1, count: 3)
let count = someArr.count

if someArr.isEmpty{
    print("yes")
}
else
{
    print("no", count)
}


nums[0]
nums[0] = 8
nums[0]


var arrr = [1,2,3]
var arrrrr = [3,4,5]
arrr+=arrrrr

names.insert("kr", at: 0)
//nums[-1]
names.removeLast()
print(names)
print(type(of: names.removeLast()))
print(names)
print(names.removeAll())
print(names)

var c = [arrrrr, arrr]
print(type(of:c))


var scores = ["kk":1,"kr":5]
print(scores)
scores.keys
scores.values
print(scores["kk"] ?? 0)

let oldScore = scores.updateValue(55, forKey: "kr")
oldScore
if let oldScore = scores.updateValue(100, forKey: "...")
{
    print(oldScore)
}


scores["kk"]  = nil

print(scores)






