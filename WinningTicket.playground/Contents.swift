//: Playground - noun: a place where people can play

import UIKit


func winningTicketMatches(inputArray :[String]) -> [[Int]] {
    
    var matches :[[Int]] = []
    
    for stringItem in inputArray {
        
       let charCount = stringItem.characters.count
         guard  charCount >= 7 && charCount <= 14   else {
            continue
        }
        var match : [Int] = []
        var exceedCount = charCount - 7
        var startIntIndex = 0
        
        for _ in 0...6 {
            
            let strIndex = stringItem.index(stringItem.startIndex, offsetBy: startIntIndex)
            guard exceedCount > 0  else {
                let numStr = "\(stringItem[strIndex])"
                let numInt = Int(numStr)
                if numInt! > 0 {
                    match.append(numInt!)
                    startIntIndex += 1
                } else {
                    break
                }
                continue
            }
                let StrIndex1 = stringItem.index(stringItem.startIndex, offsetBy: startIntIndex+1)
                let numStr = "\(stringItem[strIndex])\(stringItem[StrIndex1])"
                let numInt = Int(numStr)
                
                if numInt! <= 59 && numInt! > 0  {
                    match.append(numInt!)
                    startIntIndex += 2
                    exceedCount -= 1
                    
                } else {
                    let numStr1 = "\(stringItem[strIndex])"
                    let numInt1 = Int(numStr1)
                    if numInt! > 0 {
                        match.append(numInt1!)
                        startIntIndex += 1
                    } else {
                        break
                    }
                  
                    
                }

        }
        print("Match Item : \(match)")
        if match.count == 7 {
            matches.append(match)
        }
        
    }
    print(matches)

    return matches
    
}

let results = winningTicketMatches(inputArray: ["9123","","4105643","1234567","21344556432211"])







