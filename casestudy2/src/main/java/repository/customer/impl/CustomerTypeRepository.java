package repository.customer.impl;

import model.CustomerType;
import repository.BaseRepository.BaseRepository;
import repository.customer.ICustomerTypeRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    static List<CustomerType> customerTypeList = new ArrayList<>();
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (id, customerTypeId , name, birthday , gender,  idCard , numberPhone , email , address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_ALL_CUSTOMER_TYPE = "select * from customer_type";

    @Override
    public List<CustomerType> selectAllCustomerType() {
        customerTypeList.clear();
        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER_TYPE)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                customerTypeList.add(new CustomerType(id,name));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customerTypeList;
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
}
