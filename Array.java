//Passing two dimensional array to the function

public class Array {
	//creating static method 
	static void display(int a[][])
	{
		System.out.println("two dimensionl array:");
		//creating nested loop for printing two dimensionl array
		for(int i=0;i<a.length;i++)
		{
			for(int j=0;j<a[i].length;j++)
			{
				//printing using i and j subscript
				System.out.println(a[i][j]);
			}
		}
	}
	
	public static void main(String[] args)
	{
		//declaring and initializing two dimensional array
		int a[][]= {{1,2,3},{4,5,6}};
		display(a);
	}

}

/* output:

two dimensionl array:
1
2
3
4
5
6

*/