package controller.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class feedbackDao {



	public Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://localhost:3306/crown_app";
		String username = "root";
		String password = "";
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		return con;
	}
	

    public int insertFeedback(String name, String mail, String comment) throws ClassNotFoundException {
        String sql = "INSERT INTO feedback (name, mail, comment) VALUES (?, ?, ?)";
        try {
	        Connection con = getConnection();
	        PreparedStatement ps = con.prepareStatement(sql);
	      //future
	        

            ps.setString(1, name);
            ps.setString(2, mail);
            ps.setString(3, comment);
            int rowsInserted = ps.executeUpdate();
            return rowsInserted ;
        } catch (SQLException e) {
            e.printStackTrace();
            
        }
		return 0;
    }
}
