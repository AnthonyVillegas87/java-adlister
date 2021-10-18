import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet("/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
   }

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
       String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String size = request.getParameter("size");
        String crust = request.getParameter("crust");
        String cheese = request.getParameter("cheese");
        String sauce = request.getParameter("sauce");
        String[] topping = request.getParameterValues("topping");
       System.out.println(name + ", " + address + ", " + phone + ", " + size + ", " + crust + ", " + cheese + ", " + sauce + ", " + Arrays.toString(topping));
   }
}
