class MinStack {
    var arr = [(val : Int, min: Int)]()
    
    init() {
        
    }
    
    func push(_ val: Int) {
        if arr.count == 0{
            arr.append((val, val))
        }
        else{
            let top = self.getMin()
            arr.append((val, val > top ? top : val))
        }
    }
    
    func pop() {
        arr.popLast()
    }
    
    func top() -> Int {
        arr.last?.val ?? -1
    }
    
    func getMin() -> Int {
        arr.last?.min ?? -1
    }
}
