import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ads")
public class ListAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Use factory to get the ads dao object
        Ads adsDao = DaoFactory.getAdsDao();

        //Method on dao to get all the Ads
        List<Ad> ads = adsDao.all();

        //Pass the data to the jsp
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("ads/index.jsp").forward(request, response);

    }
}
