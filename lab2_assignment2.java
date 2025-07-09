/*2.Create a superclass Animal with a method makeSound(). Create two subclasses Dog and Cat that override the method.*/
package first_program;

//creating animal class which contains one method makesound()
class Animal
{
	void makeSound()
	{
		System.out.println("Animal sound");
	}
}

//creating two subclasses which extends from animal class
class Dog extends Animal
{
	//to access parent class method we have used super
	//super.makeSound();
	//dog class method
	void makeSound()
	{
		System.out.println("Bark! Bark!");
	}
}

class Cat extends Animal
{
	//super.makeSound();
	//cat class method
	void makeSound()
	{
		System.out.println("Meow! Meow");
	}
}
public class Inheritance 
{
	public static void main(String[] args)
	{
		Dog d1=new Dog();
		Cat c1=new Cat();
		d1.makeSound(); //gives output:Bark! Bark!
		c1.makeSound();//gives output:Meow! Meow
	}

}

/* output:

Bark! Bark!
Meow! Meow

*/