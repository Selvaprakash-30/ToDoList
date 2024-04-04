package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import dto.Task;
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
	public int createTask(Task task) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into task values(?,?,?,?,?,?,?)");
		pst.setInt(1,task.getTaskid());
		pst.setString(2,task.getTasktitle());
		pst.setString(3,task.getTaskdescription());
		pst.setString(4,task.getTaskpriority());
		pst.setString(5,task.getTaskduedate());
		pst.setString(6,task.getTaskstatus());
		pst.setInt(7,task.getUserid());
		int res=pst.executeUpdate();
		return res;
	}
	public static List<Task> getAllTaskByUserId(int userid) throws ClassNotFoundException, SQLException{
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from task where userid=?");
		pst.setInt(1,userid);
		ResultSet rs = pst.executeQuery();
		List<Task>tasks =new ArrayList<Task>();
		while(rs.next()) {
			Task task = new Task(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7));
		    tasks.add(task);
		}
		return tasks;
	}
}
