package repository.employee;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> selectAllUser();
}
