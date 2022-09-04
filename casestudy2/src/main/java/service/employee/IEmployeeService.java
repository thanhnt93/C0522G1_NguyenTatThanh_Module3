package service.employee;

import model.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeService {
    void createEmployee(Employee employee) throws SQLException;

    Employee selectEmployee(int id);

    List<Employee> selectAllEmployee();

    boolean deleteEmployee(int id) throws SQLException;

    boolean updateEmployee(Employee employee) throws SQLException;

    Employee findById(int id);
}
