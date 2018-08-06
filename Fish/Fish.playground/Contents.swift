
import Foundation

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    guard A.count > 1 else { return A.count }
    
    var index = 0
    var count = 0
    var downstreamQueue = [Int]()
    while (index < A.count) {
        if B[index] == 1 {
            downstreamQueue.append(A[index])
        }
        else {
            var newDownstreamQueue = downstreamQueue
            for dowstreamIndex in 0..<downstreamQueue.count {
                let downstreamFish = downstreamQueue[downstreamQueue.count - 1 - dowstreamIndex]
                if downstreamFish < A[index] {
                    newDownstreamQueue.removeLast()
                }
                else {
                    count -= 1
                    break
                }
            }
            count += 1
            downstreamQueue = newDownstreamQueue
        }
        index += 1
    }
    return count + downstreamQueue.count
}
