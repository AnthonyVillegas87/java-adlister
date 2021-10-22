

//import java.sql.*;
//
//public class JDBCIntro {
//
//
//    public static void main(String[] args) {
//        System.out.println("Hello, World!");
//
//        try {

   //         DriverManager.registerDriver(new Driver());


//            Connection connection = DriverManager.getConnection(
//                    ,
//                    "root",
//                    ""
//            );
//
//
//            Statement statement = connection.createStatement();
//
//            ResultSet resultSet = statement.executeQuery("SELECT * FROM codeup_test_db.albums");

        // DISPLAYING THE RESULTS OF A QUERY
//           if( resultSet.next()) {
//               String firstArtist = resultSet.getString("album_artist");
//               String firstAlbum = resultSet.getString("album_name");
//
//               System.out.println(firstArtist);
//               System.out.println(firstAlbum);
//           };

//            while(resultSet.next()) {
//                System.out.println(resultSet.getString("album_artist"));
//            }
//
//            // INSERT A RECORD
//            String query = "INSERT INTO codeup_test_db.albums (album_artist, album_name, album_release_date, album_genre, album_sales) VALUES ('Nelly Furtado', 'Loose', 2006, 'Pop, Urban, R&B', 12.5)";
//            Statement stmt = connection.createStatement();
//            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
//            ResultSet rs = stmt.getGeneratedKeys();
//            if(rs.next()) {
//                System.out.println("Inserted a new record! New id: " + rs.getLong(1));
//            }
//
//
//
//
//
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//
//
//    }
//
//
//}
