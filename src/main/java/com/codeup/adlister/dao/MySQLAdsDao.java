package com.codeup.adlister.dao;


import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {

        try {
            String safeSearchQuery = "SELECT * FROM ads WHERE title = ?";
            PreparedStatement stmt = connection.prepareStatement(safeSearchQuery);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                rs.getString(2);
            }


            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {


        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES ( ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setLong(1, ad.getId());
            ps.setString(2, ad.getTitle());
            ps.setString(3, ad.getDescription());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
           return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);

        }




//        try {
//            Statement stmt = connection.createStatement();
//            stmt.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);
//        } catch (SQLException e) {
//
//        }

    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        if(!rs.next()) {
            return null;
        }
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
