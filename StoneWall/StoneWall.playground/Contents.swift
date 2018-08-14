
import Foundation

public func solution(_ H : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    if H.count <= 1 {
        return H.count
    }
    
    var stack = Array<Int>()
    var result = 0
    
    for number in H {
        while !stack.isEmpty && number < stack.last! {
            stack.popLast()
            result += 1
        }
        
        if stack.isEmpty {
            stack.append(number)
            continue
        }
        
        if number > stack.last! {
            stack.append(number)
        }
    }
    result += stack.count
    return result
}

