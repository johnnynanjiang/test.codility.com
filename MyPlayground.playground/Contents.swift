//: Playground - noun: a place where people can play

import UIKit

var array1 = [1, 2, 3, 3, 2, 1, 0]
var array2 = [1, 2, 3, 3, 3, 3, 2]
var array3 = [2]
var array4 = [3, 3, 3]

// OddOccurrencesInArray
public func solution(_ A : inout [Int]) -> Int {
    print("solution(A)")
    
    for (i, v) in A.enumerated() {
        if (A.count == 1) {
            return A[0]
        }
        
        let results = A.enumerated().filter { p in
            p.element == v
        }
        
        if (results.count >= 2) {
            A.remove(at: results[0].offset)
            A.remove(at: results[1].offset - 1)
            print(A)
        }
    }
    
    return 0;
}

assert(solution(&array1) == 0)
assert(solution(&array2) == 1)
assert(solution(&array3) == 2)
assert(solution(&array4) == 3)
