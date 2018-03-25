package BinaryGap;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by nanjiang on 25/3/18.
 */

public class SolutionTest {
    BinaryGap.Solution solution;

    @Before
    public void setUp() {
        solution = new BinaryGap.Solution();
    }

    @Test
    public void testZeroCases() {
        assertEquals(0, solution.solution(1)); //1
        assertEquals(0, solution.solution(3)); //11
    }

    @Test
    public void testNonZeroCases() {
        assertEquals(1, solution.solution(2)); //10
        assertEquals(2, solution.solution(4)); //100
        assertEquals(3, solution.solution(17)); //10001
        assertEquals(4, solution.solution(16)); //10000
    }
}