//: Playground - noun: a place where people can play


// CK : Algorithm to find longest non repeating subsctring within a String. Took me 2 days.Running Time is O(n)

import UIKit

var str = "Hello, playground"

func lengthOfLongestSubstring(_ s: String) -> Int {
    var firstPtr = 0
    var  secPtr  = 0
    var longestSubStrlength = 0
    
    if s.characters.count == 0 {
        return 0
    }
    
    var charDict = [Character : Int]()
    for index in 0...s.characters.count - 1 {
        let sindex = s.index(s.startIndex, offsetBy: index)
        let char = s[sindex]
        firstPtr = index
        if charDict[char] == nil {
            charDict[char] = index
            //longestSubStrlength += 1
            
        } else {
            let oldIndex = charDict[char]
            charDict[char] = index
            if secPtr < (oldIndex! + 1) {
                secPtr = oldIndex! + 1
            }
            
            if longestSubStrlength < (firstPtr - secPtr) + 1{
                longestSubStrlength = (firstPtr - secPtr) + 1
            }
    }
        if longestSubStrlength < (firstPtr - secPtr) + 1{
            longestSubStrlength = (firstPtr - secPtr) + 1
        }

    
    
}
    
    
    return longestSubStrlength

}


let result = lengthOfLongestSubstring("abba")
print(result)




