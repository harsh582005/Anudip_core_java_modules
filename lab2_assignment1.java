/*1.Write a Java program to demonstrate method overloading by creating a class Calculator with multiple add() methods that accept different parameter types.
*/

public class Calculator {

	//creating three methods with same name and different parameters
	void add(int a,int b)
	{
		System.out.println("addition of integer numbers:"+(a+b));
	}
	//method is called if two floating point value is passed
	void add(float a,float b)
	{
		System.out.println("addition of floating numbers:"+(a+b));
	}
	//method is called if three value is passed
	void add(int a,int b,int c)
	{
		System.out.println("addition of three numbers:"+(a+b+c));
	}
	
	public static void main(String[] args)
	{
		//creating object of a class
		Calculator obj=new Calculator();
		
		obj.add(2,3);//calls first add method
		
		obj.add(5.0f,4.0f);//calls second
		
		//differentiated by int and float
		obj.add(5,10,15);//calls third

	}
	
}

/* Output:

addition of integer numbers:5
addition of floating numbers:9.0
addition of three numbers:30
*/
