class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
         var res = [[Int]]()
        res.append([1])
    
    for i in 1..<numRows {
        var row = [Int]()
        for j in 0...i {
            if j == 0 || j == i {
                row.append(1)
            } else {
                row.append(res[i-1][j-1] + res[i-1][j])
            }
        }
        res.append(row)
    }
    return res
    }
}