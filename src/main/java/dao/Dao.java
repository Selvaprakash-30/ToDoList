package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialBlob;

import dto.User;

public class Dao {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
		return con;
	}
	public  int saveUser(User user) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
		pst.setInt(1,user.getUserId());
		pst.setString(2,user.getUserName());
		pst.setString(3,user.getUserEmail());
		pst.setLong(4,user.getUserContact());
		pst.setString(6,user.getUserPassword());
		
		Blob imageBlob=new SerialBlob(user.getUserImage());
		pst.setBlob(5,imageBlob);
		int res=pst.executeUpdate();
		return res;		
	}
	public  User findByEmail(String email) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from user where useremail=?");
		pst.setString(1,email);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
//			convert Blob image into byte[]
			Blob imageBlob=rs.getBlob(5);
			byte[]image=imageBlob.getBytes(1,(int)imageBlob.length());
			User u=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getLong(4),rs.getString(6),image);
			return u;
		}
		else {
			return null;
		}
	}
}
