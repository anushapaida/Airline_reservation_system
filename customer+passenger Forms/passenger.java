package bean;

public class Passenger 
{
	private 
	String firstName, lastName, dob;
	int custID;
	
	public int getCustID(){ return custID; }
	public void setCustID(int custID){ this.custID = custID; }
	
	public String getFirstName(){ return firstName; }
	public void setFirstName(String firstName){ this.firstName = firstName; }
	
	public String getLastName(){ return lastName; }
	public void setLastName(String lastName){ this.lastName = lastName; }
	
	public String getDob(){ return dob; }
	public void setDob(String dob){ this.dob = yearDob + monthDob + dayDob; }
}