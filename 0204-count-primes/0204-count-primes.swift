class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 3 {
            return 0
        }
        
      var isPrime = Array(repeating: true, count: n)
        isPrime[0] = false
        isPrime[1] = false

        for i in 2..<Int(sqrt(Double(n))) + 1 {
            if isPrime[i] {
                for j in stride(from: i * i, to: n, by: i) {
                    isPrime[j] = false
                }
            }
        }

        return isPrime.filter { $0 }.count
    }
}