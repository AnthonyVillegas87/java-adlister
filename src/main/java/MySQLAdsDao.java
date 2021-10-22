
import com.mysql.cj.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) throws SQLException{

           DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

    }

    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        String query = "SELECT * FROM adlister_db.ads";
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                Ad ad = new Ad(
                  rs.getLong("user_Id"),
                  rs.getString("title"),
                  rs.getString("description")
                );
                ads.add(ad);
            }

        }catch(SQLException throwables) {
          throwables.printStackTrace();
        }
         return ads;
    }

    @Override
    public Long insert(Ad ad) {
        long insertedId = 0;
        String insertQuery = String.format(
                "INSERT INTO ads (title, description) VALUES ( %s, %s)",
                ad.getTitle(),
                ad.getDescription()
        );
        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet generateKeys = stmt.getGeneratedKeys();
            if(generateKeys.next()) {
                insertedId = generateKeys.getLong(1);
            }
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return insertedId;
    }
}
