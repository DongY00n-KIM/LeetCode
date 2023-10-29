class Solution {
    public int longestConsecutive(int[] nums) {
        /*
            1. using set
            2. if the number has the left value, just skip
            3. if it doesn't strat find right value(num +1)
        */
        int res = 0;
        Set<Integer> set = new HashSet<>();
        
        for(int n : nums){
            set.add(n);
        }
        
        for(int i = 0; i < nums.length; i++){
            int temp = 0;
            int startNum = nums[i];
            
            if(!set.contains(startNum - 1)){
                temp++;
                while(set.contains(startNum + 1)){
                    startNum++;
                    temp++;
                }//while
                res = Math.max(res, temp);
            }//if(!set.contains)
        }//for (int i = 0 ...)

        return res;
    }
}