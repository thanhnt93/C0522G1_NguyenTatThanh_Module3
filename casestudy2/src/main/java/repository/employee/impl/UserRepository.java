package repository.employee.impl;

import model.User;
import repository.BaseRepository.BaseRepository;
import repository.employee.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {

    List<User> userList = new ArrayList<>();
    private static final String SELECT_ALL_USER = "select * from user";

    @Override
    public List<User> selectAllUser() {
        userList.clear();
        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("user_name");
                String passWord = rs.getString("passWord");
                userList.add(new User(userName, passWord));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return userList;
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
