class Solution {
    func validIPAddress(_ IP: String) -> String {
        if IPv4Valid(IP){
            return "IPv4"
        }
        else if IPv6Valid(IP){
            return "IPv6"
        }
        return "Neither"
    }
    
    func IPv4Valid(_ IP : String) -> Bool{
        let ips = IP.components(separatedBy:".")
        if ips.count != 4{
            return false
        }
        
        for ip in ips{
            if ip.count == 0 || ip.count > 3{
                return false
            }
            guard let num = Int(ip) else{
                return false
            }
            if num < 0 || num > 255 || String(num) != ip{
                return false
            }
        }
        return true
    }
    
    func IPv6Valid(_ IP : String) -> Bool{
        let ips = IP.components(separatedBy:":")
        let validChars : String = "0123456789abcdefABCDEF"
        
        if ips.count != 8{
            return false
        }
        
        for ip in ips{
            if ip.count == 0 || ip.count > 4{
                return false
            }
            for c in ip{
                if !validChars.contains(c){
                    return false 
                }
            }
        }
        return true
    }
}