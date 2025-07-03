//2. Write a Java program to calculate factorial of given number. eg.3!=3*2*1=6

import java.util.Scanner;

public class Factorial {

	public static void main(String[] args)
	{
		
		//Asking user for number
		System.out.println("Enter number:");
		
		//making object of scanner class
		Scanner sc=new Scanner(System.in);

		//value assigned to n1 variable
		int n=sc.nextInt();
		
		int fact=1;
		//i is initialize to 1 and goes to n
		for(int i=1;i<=n;i++)
		{
			//overtime fact value increased and multiplied by i. e.g.fact=1*1
			fact=fact*i;
		}
		
		//printing factorial of given number
		System.out.println("factorial of "+n+" is "+fact);

	}

}

/*output

Enter number:
7
factorial of 7 is 5040

*/