//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        var subStringIndex = -1
        
        if  needle.characters.count == 0 {
            return 0
        }
        
        if haystack.characters.count == 0  {
            return -1
        }
        
        
        let needleArray = Array(needle.characters)
        
        if needle.characters.count > haystack.characters.count {
            return -1
        }
        
        
        for index in 0...haystack.characters.count-1 {
            for nindex in 0...needle.characters.count-1 {
                if nindex+index > haystack.characters.count-1 {
                    return -1
                }
                let innerIndex = haystack.index(haystack.startIndex, offsetBy: index+nindex)
                if haystack[innerIndex] != needleArray[nindex] {
                    break
                } else {
                    if nindex == needle.characters.count-1 {
                        subStringIndex = index
                        return subStringIndex
                        
                    }
                }
                
            }
            
        }
        return subStringIndex
    }
    



let isit = strStr("aaaa","baaa")




