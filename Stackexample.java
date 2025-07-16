/*Write a program to declare stack.Store 10 elements into it.Remove 4 elements from
 stack and display it.*/
package first_program;
import java.util.*;

public class Stackexample {

    public static void main(String[] args) {
        // Create a stack of integers
        Stack<Integer> stack = new Stack<>();

        // Push 10 elements using loop
        int[] values = {78, 25, 75, 23, 10, 32, 77, 54, 70, 29};
        for (int value : values) {
            stack.push(value);
        }

        // Display stack before popping
        System.out.println("Stack before popping: " + stack);

        // Pop 4 elements using loop
        for (int i = 0; i < 4; i++) {
            stack.pop();
        }

        // Display stack after popping
        System.out.println("Stack after popping: " + stack);
    }
}

/*output:

Stack before popping: [78, 25, 75, 23, 10, 32, 77, 54, 70, 29]
Stack after popping: [78, 25, 75, 23, 10, 32]

*/