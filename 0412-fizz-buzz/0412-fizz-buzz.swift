class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var returnArr = [String]()
        
        for i in 1...n{
            var tempString = ""
            
            if i % 3 == 0{
                tempString += "Fizz"
            }
            
            if i % 5 == 0{
               tempString += "Buzz" 
            }
            
            if i % 3 != 0 && i % 5 != 0{
                tempString = "\(i)"
            }
            
            returnArr.append(tempString)
        }
        return returnArr
    }
}