
import Foundation

public func solution(_ S : inout String) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    guard S.characters.count > 0 else { return 1 }
    guard S.characters.count % 2 == 0 else { return 0 }
    
    var stack: [Character] = []
    
    for char in S.characters {
        switch char {
        case "{", "[", "(":
            stack.append(char)
        case "}":
            if stack.last == "{" { stack.removeLast() } else { return 0 }
        case "]":
            if stack.last == "[" { stack.removeLast() } else { return 0 }
        case ")":
            if stack.last == "(" { stack.removeLast() } else { return 0 }
        default: break
        }
    }
    
    return stack.count == 0 ? 1 : 0
}
