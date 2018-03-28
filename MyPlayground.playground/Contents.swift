//: Playground - noun: a place where people can play

import UIKit

var array1 = [1, 2, 3, 3, 2, 1, 0]
var array2 = [1, 2, 3, 3, 3, 3, 2]
var array3 = [2]
var array4 = [3, 3, 3]
var array5 = Array(repeating: 4, count: 10001)

public func solution(_ A : inout [Int]) -> Int {
    var tempArray: [Int] = A
    
    for e in tempArray {
        if (tempArray.count == 1) {
            return tempArray[0]
        }
        
        let matchedElements = tempArray.filter { ee in
            ee == e
        }
        
        if matchedElements.count == 1 {
            return matchedElements[0]
        }
        
        if matchedElements.count % 2 == 0 {
            tempArray = tempArray.filter { ee in
                ee != e
            }
        } else {
            return matchedElements[0]
        }
    }
    
    return -1;
}

assert(solution(&array1) == 0)
assert(solution(&array2) == 1)
assert(solution(&array3) == 2)
assert(solution(&array4) == 3)
assert(solution(&array5) == 4)
