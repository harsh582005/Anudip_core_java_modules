/*Write a Java program to calculate area using method overloading for the following shapes:

Circle (radius)

Rectangle (length, breadth)

Triangle (base, height)

Use the method area() with different parameters.*/


public class Method_overloading {
	//creating three methods with same name and different parameters
	void area(int radius)
	{
		//method for calculating area of circle
		System.out.println("Area of circle: "+(Math.PI*radius*radius));
	}
	
	void area(int length,int breadth)
	{
		//method for calculating area of rectangle
		System.out.println("Area of rectangle: "+length*breadth);
	}
	
	void area(float base,float height)
	{
		//method for calculating area of triangle
		System.out.println("Area of triangle: "+(0.5*base*height));
	}
	
	public static void main(String[] args)
	{
		//creating object of a class
		Method_overloading obj=new Method_overloading();
		
		obj.area(5);//calls circle method
		
		obj.area(2,3);//rectangle
		
		//differentiated by int and float
		obj.area(5.0f,4.0f);//triangle
	}

}

/*output:

Area of circle: 78.53981633974483
Area of rectangle: 6
Area of triangle: 10.0

*/