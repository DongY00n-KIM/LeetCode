class Solution {
    public boolean containsDuplicate(int[] nums) {
        /*
        Arrays.sort(nums);
        for(int i = 1; i < nums.length; i++){
            if(nums[i - 1] == nums[i])
                return true;
        }
        return false;
        */
        
        /*
        Set duplicateSet = new HashSet<Integer>();
        for(int n : nums){
            if(duplicateSet.contains(n))
                return true;
            else
                duplicateSet.add(n);
        }
        return false;
        */
        Set dupSet = new HashSet<Integer>();

        for(int i = 0; i < nums.length; i++){
            if(dupSet.contains(nums[i])){
                return true;
            }
            else{
                dupSet.add(nums[i]);
            }
        }
        return false;
    }
}