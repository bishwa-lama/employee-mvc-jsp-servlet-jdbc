package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.javaguides.registration.model.Employee;

/*
 * EmployeeDao.java class provides CRUD operation for the employees in the database
 * @author Bishwa Lama
 */
public class EmployeeDao {
	// Created variables of MySQL database connection URL and credentials
	private String mysqlURL = "jdbc:mysql://localhost:3306/employees?useSSL=false";
	private String mysqlUsername = "root";
	private String mysqlPassword = "password";

	// Variables created to insert data to MySQL
	private static final String INSERT_EMPLOYEE_MYSQL = "INSERT INTO employee "
			+ " (firstname, lastname, email, username, password, address, contact, department, salary) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String SELECT_EMPLOYEES_BY_ID = "SELECT id,firstname, lastname, email, username, password, address, contact, department, salary from employee where id = ?";
	private static final String SELECT_ALL_EMPLOYEES = "SELECT * FROM employee";
	private static final String UPDATE_EMPLOYEE = "UPDATE employee set firstname = ?, lastname=?, email=?, username=?, password=?, address=?, contact=?, department=?, salary=? where id = ?;";
	private static final String DELETE_EMPLOYEE = "DELETE from employee where id = ?;";
	public EmployeeDao() {
	};

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(mysqlURL, mysqlUsername, mysqlPassword);
		} catch (SQLException e) {
			printSQLException(e);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public void registerEmployee(Employee employee) throws ClassNotFoundException {
		System.out.println(INSERT_EMPLOYEE_MYSQL);
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_MYSQL)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getEmail());
			preparedStatement.setString(4, employee.getUsername());
			preparedStatement.setString(5, employee.getPassword());
			preparedStatement.setString(6, employee.getAddress());
			preparedStatement.setString(7, employee.getContact());
			preparedStatement.setString(8, employee.getDepartment());
			preparedStatement.setString(9, employee.getSalary());

			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public List<Employee> selectAllEmployee() {
		List<Employee> employees = new ArrayList<>();
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEES);) {
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			System.out.println(rs);
			while (rs.next()) {
				int id = rs.getInt("id");
				String firstName = rs.getString("firstname");
				String lastName = rs.getString("lastname");
				String email = rs.getString("email");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String address = rs.getString("address");
				String contact = rs.getString("contact");
				String department = rs.getString("department");
				String salary = rs.getString("salary");
				employees.add(new Employee(id, firstName, lastName, email, username, password, address, contact,
						department, salary));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return employees;
	}

	public Employee selectEmployee(int userid) {
		Employee employee = null;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEES_BY_ID);) {
			System.out.println(preparedStatement);
			preparedStatement.setInt(1, userid);
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String firstName = rs.getString("firstname");
				String lastName = rs.getString("lastname");
				String email = rs.getString("email");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String address = rs.getString("address");
				String contact = rs.getString("contact");
				String department = rs.getString("department");
				String salary = rs.getString("salary");
				employee = new Employee(id, firstName, lastName, email, username, password, address, contact,
						department, salary);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return employee;

	}

	public boolean updateEmployee(Employee employee) {
		boolean rowUpdated = false;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_EMPLOYEE)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getEmail());
			preparedStatement.setString(4, employee.getUsername());
			preparedStatement.setString(5, employee.getPassword());
			preparedStatement.setString(6, employee.getAddress());
			preparedStatement.setString(7, employee.getContact());
			preparedStatement.setString(8, employee.getDepartment());
			preparedStatement.setString(9, employee.getSalary());
			preparedStatement.setInt(10, employee.getId());
			
			System.out.println(preparedStatement);
			rowUpdated = preparedStatement.executeUpdate() > 0;
		} catch (SQLException e) {
			printSQLException(e);
		}
		return rowUpdated;
	}
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

	public boolean deleteEmployee(int id) {
		boolean rowDeleted = false;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEE);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }catch (SQLException e) {
			printSQLException(e);
		}
        return rowDeleted;
	}
}
