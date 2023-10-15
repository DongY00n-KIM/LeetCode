class Solution {
    public boolean containsNearbyDuplicate(int[] nums, int k) {
        Set dupSet = new HashSet<Integer>();
        for(int i = 0; i < nums.length; i++){
            if(i > k)
                dupSet.remove(nums[i - k - 1]);
            if(!dupSet.add(nums[i]))
                return true;
        }
        return false;
    }
}