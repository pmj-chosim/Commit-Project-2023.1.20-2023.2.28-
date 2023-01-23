class Person{
	private String lastName;
	private String firstName;

	String getLastName(){
		return lastName;
	}
	String getFirstName(){
	 	return firstName;
	}
	public Person(String lastName, String firstName){
		this.lastName=lastName;
		this.firstName=firstName;
	}
	public String buildName(){
	 	return String.format("%s %s\n", this.getLastName(), getFirstName());
	}
}

public class PersonTest{
	public static void main(String argv[]){

		Person person=new Person("홍", "길동")	;
		System.out.println(person.buildName());
	}
}