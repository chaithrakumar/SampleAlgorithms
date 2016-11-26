//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Quick Sort Algorithm using recursion.Running Time O(nlogn). could be 0(n^2) worst case.

func quickSort( inputArray : [Int]) -> [Int] {
    var inarr = inputArray
    if inputArray.count > 1 {
        var pvotArr : [Int] = []
        let pivot = inarr.remove(at: 0)
        pvotArr.append(pivot)
        print(inarr)
        return (quickSort(inputArray: inarr.filter {$0 <= pivot}) + pvotArr +
               quickSort(inputArray: inarr.filter {$0 > pivot}))
        
    } else {
        return inarr
    }
   
}

let result = quickSort(inputArray: [9,8,7,6,5,4,3,2,1])
print(result)