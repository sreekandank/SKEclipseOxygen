
public class Demo1 {
	public static void main(String args[])
	{
     Add obj1=new Add();
     System.out.println(obj1.add(5,6));
	}
}
class Add
{
	int add(int a, int b)
	{
		return a+b;
	}
}
