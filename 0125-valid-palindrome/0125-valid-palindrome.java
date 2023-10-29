class Solution {
    public boolean isPalindrome(String s) {
        int l = 0;
        int r = s.length() - 1;
        String temp = s.toLowerCase();
        
        while(l <= r){
            if(!Character.isLetterOrDigit(temp.charAt(l)))
                l++;
            else if(!Character.isLetterOrDigit(temp.charAt(r)))
                r--;
            else{
                if(temp.charAt(l) != temp.charAt(r))
                    return false;
                l++;
                r--;
            }
        }
        return true;
    }
}