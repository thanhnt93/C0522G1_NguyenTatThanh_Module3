
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends javax.servlet.http.HttpServlet {
    static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer(1,"Đặng Thị Thuỷ Điện", "13-01-2000","Quảng Nôm","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg "));
        customerList.add(new Customer(2,"Nguyễn Tất Thành", "13-01-2003","Quảng Nôm","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
        customerList.add(new Customer(3,"Nguyễn Thanh Công", "13-01-1991","Đà Nẵng","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
        customerList.add(new Customer(4,"Hoàng Minh Trí", "13-01-1998","Huế","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
        customerList.add(new Customer(5,"Bùi Hùng", "13-01-1998","Huế","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
        customerList.add(new Customer(6,"Hà Bảo Ân", "13-01-1998","Huế","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
        customerList.add(new Customer(7,"Huỳnh Trung Thuyên", "13-01-1998","Huế","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
        customerList.add(new Customer(8,"Đặng Ngọc Huy", "13-01-1998","Huế","https://andy.codegym.vn/storage/images/avatars/38cba5c3296a2935a26f2dc896be48e2.jpeg"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
