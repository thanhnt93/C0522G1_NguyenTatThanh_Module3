package repository.customer.impl;

import model.Customer;
import repository.BaseRepository.BaseRepository;
import repository.customer.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    static List<Customer> customerList = new ArrayList<>();
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (customer_type_id , name, date_of_birth , gender,  id_card , phone_number , email , address) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String FIND_BY_ID = "select * from customer where id = ?";
    private static final String SELECT_ALL_CUSTOMER = "select * from customer";
    private static final String UPDATE_CUSTOMER_SQL = "update customer set customer_type_id =? , name = ? , date_of_birth = ? , gender = ? ,  id_card = ? , phone_number = ? , email = ?  , address = ? where id = ? ";
    private static final String DELETE_CUSTOMER_SQL = "update customer set is_delete = 1 where id = ? ";
    private static final String SEARCH_BY_NAME = " select * from customer where name like ? ";


    @Override
    public void createCustomer(Customer customer) throws SQLException {
        customerList.clear();
        System.out.println(INSERT_CUSTOMER_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = BaseRepository.getConnectDB(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
//            preparedStatement.setInt(1, customer.getId());
            preparedStatement.setInt(1, customer.getCustomerTypeId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getDateOfBirth());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
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

    @Override
    public Customer selectCustomer(int id) {
        return null;
    }

    @Override
    public List<Customer> selectAllCustomer() {
        customerList.clear();
        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int customerTypeId = rs.getInt("customer_type_id");
                String name = rs.getString("name");
                String birthday = rs.getString("date_of_birth");
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String numberPhone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int isDelete = rs.getInt("is_delete");

                customerList.add(new Customer(id,customerTypeId,name,birthday,gender,idCard,numberPhone,email,address,isDelete));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customerList;
    }

    //    public Customer(int id, int customerTypeId, String name,
//                    String birthday, int gender, String idCard,
//                    String numberPhone, String email, String address)
    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = BaseRepository.getConnectDB(); PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        customerList.clear();
        boolean rowUpdated;

        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement statement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);) {

            statement.setInt(1, customer.getCustomerTypeId());
            statement.setString(2, customer.getName());
            statement.setString(3, customer.getDateOfBirth());
            statement.setInt(4, customer.getGender());
            statement.setString(5, customer.getIdCard());
            statement.setString(6, customer.getPhoneNumber());
            statement.setString(7, customer.getEmail());
            statement.setString(8, customer.getAddress());
            statement.setInt(9, customer.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public Customer findById(int id) {
        Customer customer = null;

        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {

                int customerTypeId = rs.getInt("customer_type_id");
                String name = rs.getString("name");
                String birthday = rs.getString("date_of_birth");
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String numberPhone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int isDelete = rs.getInt("is_delete");
                customer= new Customer(id,customerTypeId,name,birthday,gender,idCard,numberPhone,email,address,isDelete);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> searchByName(String nameSearch) {
        customerList.clear();
        try {
            Connection connection = BaseRepository.getConnectDB();

            PreparedStatement preparedStatement =
                    connection.prepareStatement(SEARCH_BY_NAME);

            preparedStatement.setString(1, "%" + nameSearch + "%");
            ResultSet rs = preparedStatement.executeQuery();
            Customer customer = null;
            while (rs.next()) {
                int id = rs.getInt("id");
                int customerTypeId = rs.getInt("customer_type_id");
                String name = rs.getString("name");
                String birthday = rs.getString("date_of_birth");
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String numberPhone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                customer= new Customer(id,customerTypeId,name,birthday,gender,idCard,numberPhone,email,address);
                customerList.add(customer);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return customerList;
    }
}

