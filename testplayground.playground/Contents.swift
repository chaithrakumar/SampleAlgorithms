//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// let str2 = str[0..4]
//var str = "Hello, playground"

    var welcome = "hello world hello world hello world"


let range = welcome.index(welcome.startIndex, offsetBy:10)..<welcome.endIndex
 welcome.removeSubrange(range)

let rotationCount = 4
var array = [1,2,3,4,5]

func rotateArrray() {

for _ in 1...rotationCount {
    
 let getele = array[0]
    array.append(getele)
    array.remove(at : 0 )
    
}
print(array)
    
   // array = array.map(String(Int({$0})))
}

rotateArrray()
/////////

func removeDuplicates(nums : [Int]) -> Int {
    var arrr = nums
    if arrr.count == 0 {
        return 0
    }
    
    if arrr.count == 1 {
        return 1
    }
    
    for index in 0...arrr.count-2 {
        
        let x = arrr[index]
        let y = arrr[index+1]
        if x == y {
            arrr.remove(at: x)
        }
        
        if arrr.count <= index+2 {
            return 0
        }
        
        
    }
    
    return arrr.count
    
}

removeDuplicates(nums: [1,1,2])

// Anagram Code O(n^2)-- in efficient algorithm- but works :)

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        let len = s.characters.count
        let len2 = t.characters.count
        
        if len != len2 {
            return false
        }
        if (len == 0 || len2 == 0) {
            return true
        }
        var mt = t
        for index in 0...len-1 {
            let sindex =  s.index(s.startIndex, offsetBy: index)  //advance(s.startIndex, index)
            for x in 0...mt.characters.count - 1 {
                let tindex =  mt.index(t.startIndex, offsetBy: x)
                if s[sindex] == mt[tindex] {
                    mt.remove(at: tindex)
                    break
                }
            }
        }
        
        if mt.characters.count == 0 {
            return true
        } else {
            return false
        }
        return false
    }
}









