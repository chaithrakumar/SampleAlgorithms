//: Playground - noun: a place where people can play

import UIKit

//Algorithm for Merge Sort 

//Merge Sort , Time complexity is O(nlogn)


func mergeTwoArrays( _ array1 : [Int], _ array2 : [Int]) -> [Int] {
    var x = 0
    var y = 0
    var tempArray : [Int] = []
    
    while x < array1.count && y < array2.count {
        if array1[x] <= array2[y]{
            tempArray.append(array1[x])
            x += 1
        } else {
            tempArray.append(array2[y])
            y += 1
        }
    }
    if x == array1.count {
        while y < array2.count {
            tempArray.append(array2[y])
            y += 1
        }
        
    } else if y == array2.count {
        while x < array1.count {
            tempArray.append(array1[x])
            x += 1
        }
    }
    return tempArray
    
}

func mergeSort(_ inputArray : [Int]) -> [Int]{
    
    if inputArray.count < 2 {
        return inputArray
    }
    let mid = inputArray.count/2 - 1
    let leftarray  = inputArray[0...mid]
    let rightArray = inputArray[mid+1...inputArray.count-1]
    let leftMergedArray   =   mergeSort(Array(leftarray))
    let rightMergedArray  =   mergeSort(Array(rightArray))
    return  mergeTwoArrays(leftMergedArray, rightMergedArray)
}


//let result = mergeTwoArrays([1,5],[2,3])
let res = mergeSort([9,8,1,3,4,5,6,12,13])
print(res)
//print(result)


