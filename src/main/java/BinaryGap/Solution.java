package BinaryGap;

/**
 * Created by nanjiang on 25/3/18.
 */

class Solution {
    public int solution(int N) {
        String binaryString = Integer.toBinaryString(N);

        int maxZeroCount = 0;
        int zeroCount = 0;

        for (int i=0; i<binaryString.length(); i++) {
            if (binaryString.charAt(i) == '0') {
                zeroCount++;
            } else {
                zeroCount = 0;
            }

            if (zeroCount > maxZeroCount) {
                maxZeroCount = zeroCount;
            }
        }

        return maxZeroCount;
    }
}