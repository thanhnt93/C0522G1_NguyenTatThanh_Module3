package repository.employee.impl;

import model.EducationDegree;
import repository.BaseRepository.BaseRepository;
import repository.employee.IEducationDegreeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EducationDegreeRepository implements IEducationDegreeRepository {
    List<EducationDegree> educationDegreeList = new ArrayList<>();
    private static final String SELECT_ALL_EDUCATION_DEGREE = "select * from education_degree";

    @Override
    public List<EducationDegree> selectAllEducationDegree() {
        educationDegreeList.clear();
        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EDUCATION_DEGREE)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                educationDegreeList.add(new EducationDegree(id, name));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return educationDegreeList;
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
