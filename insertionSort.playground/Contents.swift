//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Insertion Sort Algorithm in swift. Runtime  O(n^2)

func insertionSort( length : Int, inputAr : [Int])
{
    var inputArray = inputAr
    
    for firstIndex in 0...inputArray.count-1 {
        
        var secondIndex = firstIndex
        if secondIndex == 0 {
            continue
        }
        
        while secondIndex > 0 {
            if inputArray[secondIndex] < inputArray[secondIndex-1]{
                //swap two values
                let temp = inputArray[secondIndex]
                inputArray[secondIndex] = inputArray[secondIndex-1]
                inputArray[secondIndex-1] = temp
            }
            secondIndex -= 1
        }
        
        let formattedString = inputArray.map{String($0)}
        let outPut =  formattedString.joined(separator: " ")
        print(outPut)
        
        
    }
    
}


insertionSort(length: 5, inputAr: [2,3,6,7,1])
