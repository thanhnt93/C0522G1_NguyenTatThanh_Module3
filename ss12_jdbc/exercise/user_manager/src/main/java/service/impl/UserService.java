package service.impl;

import model.User;
import reponsitory.IUserRepository;
import reponsitory.impl.UserRepository;
import service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();


    @Override
    public void insertUser(User user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> sortByNameAsc() {
        return userRepository.sortByNameAsc();
    }

    @Override
    public List<User> sortByNameDesc() {
        return userRepository.sortByNameDesc();
    }

    @Override
    public List<User> searchByCountry(String countrySearch) {
        return userRepository.searchByCountry(countrySearch);
    }
}
