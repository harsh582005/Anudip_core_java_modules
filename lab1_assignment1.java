//1. Write Java Program to find maximum number using ternary operator.

import java.util.Scanner;

public class Max {

	public static void main(String[] args)
	{
		//Asking user for first number
		System.out.println("Enter first number:");
		
		//making object of scanner class
		Scanner sc=new Scanner(System.in);
		
		//value assigned to n1 variable
		int n1=sc.nextInt();
		
		//Asking to user for second number
		System.out.println("Enter second number:");
		
		int n2=sc.nextInt();
		
		//if n1 is greater than n2 , n1 value is assigned to max else n2
		int max=(n1>n2)?n1:n2;
		
		//displaying max value
		System.out.println("Maximum number:"+max);
	}

}

/*output:

Enter first number:
5
Enter second number:
10
Maximum number:10


*/