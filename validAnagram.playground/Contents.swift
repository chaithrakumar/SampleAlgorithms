//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func isAnagram(_ s: String, _ t: String) -> Bool {
    
    let len = s.characters.count
    let len2 = t.characters.count
    
    if len != len2 {
        return false
    }
    if (len == 0 || len2 == 0) {
        return true
    }
    
    var valueDictionary = [Character : Int]()
    
    for index in 0...s.characters.count-1 {
        
        let itemIndex = s.index(s.startIndex, offsetBy: index)
        let charS = s[itemIndex]
        
        if valueDictionary[charS] != nil {
            valueDictionary[charS] = valueDictionary[charS]! + 1
        } else {
            valueDictionary[charS] = 1
        }
        
    }
    print(valueDictionary)
    
    for tindex in 0...t.characters.count - 1 {
        
        let itemIndex = t.index(t.startIndex, offsetBy: tindex)
        let tChar = t[itemIndex]
        
        if valueDictionary[tChar] != nil {
            if valueDictionary[tChar]! > 1 {
                valueDictionary[tChar] = valueDictionary[tChar]! - 1
            } else {
                valueDictionary.removeValue(forKey: tChar)
            }
            
        } else {
            return false
        }
        
        
    }
    
    print(valueDictionary)
    
    if valueDictionary.count != 0 {
        return false
    } else {
        return true
    }
    
    return false
}


let isit = isAnagram("anagram","naaramg")

if isit {
    print("Its an Anagram")
} else {
    print("Not an anagram")
}
