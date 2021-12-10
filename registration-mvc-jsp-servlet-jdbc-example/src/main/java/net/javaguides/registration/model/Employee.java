package net.javaguides.registration.model;

public class Employee {
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String username;
	private String password;
	private String address;
	private String contact;
	private String department;
	private String salary;
	
	public Employee() {};
	
	public Employee(String firstName, 
			String lastName, 
			String email, 
			String username,
			String password, 
			String address,
			String contact, 
			String department, 
			String salary) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.username = username;
		this.password = password;
		this.address = address;
		this.contact = contact;
		this.department = department;
		this.salary = salary;
	}

	public Employee(int id, 
			String firstName, 
			String lastName, 
			String email, 
			String username, 
			String password,
			String address, 
			String contact, 
			String department, 
			String salary) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.username = username;
		this.password = password;
		this.address = address;
		this.contact = contact;
		this.department = department;
		this.salary = salary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}
}
