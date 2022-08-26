package service;

import dto.UsersDto;
import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;
    List<User> sortByNameAsc();
    List<User> sortByNameDesc();
    List<User> searchByCountry(String countrySearch);

    List<UsersDto> selectJoinUsers();
}
