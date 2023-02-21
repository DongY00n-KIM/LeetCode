class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let r = matrix.count
        let c = matrix[0].count
        
        var rz = false
        var cz = false
        
        for j in 0..<c{
            if matrix[0][j] == 0{
                rz = true
                break
            }
        }
        
        for i in 0..<r{
            if matrix[i][0] == 0{
                cz = true
                break
            }
        }
        
        for i in 1..<r{
            for j in 1..<c{
                if matrix[i][j] == 0{
                    matrix[i][0] = 0
                    matrix[0][j] = 0
                }
            }
        }
        
        for i in 1..<r{
            for j in 1..<c{
                if matrix[i][0] == 0 || matrix[0][j] == 0{
                    matrix[i][j] = 0
                }
            }
        }
        
        if rz{
            for j in 0..<c{
                matrix[0][j] = 0
            }
        }
        
        if cz{
            for i in 0..<r{
                matrix[i][0] = 0
            }
        }
        
        
        
    }
}