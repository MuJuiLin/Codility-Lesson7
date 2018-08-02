
import Foundation

public func solution(_ S : inout String) -> Int {
    // write your code in Swift 3.0 (Linux)
    var stack = 0
    for char in S.unicodeScalars {
        if char == "(" {
            stack += 1
        }
        else if char == ")" {
            if stack == 0 {
                return 0
            }
            else {
                stack -= 1
            }
        }
    }
    
    return stack == 0 ? 1 : 0
}


