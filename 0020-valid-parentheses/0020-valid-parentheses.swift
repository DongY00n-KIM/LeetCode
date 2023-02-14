class Solution {
    func isValid(_ s: String) -> Bool {
    if s.count % 2 != 0{
        return false
    } 
    var stack: [Character] = []
    
    for bracket in s {
        switch bracket {
            case "{":
            stack.append("}")
            case "(":
            stack.append(")")
            case "[":
            stack.append("]")
            default:
                guard bracket == stack.popLast() else { return false }
        }
    }
    return stack.isEmpty
}
}