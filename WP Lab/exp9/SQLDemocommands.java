import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;
	import java.sql.Statement;

	public class SQLDemoCommands {

		public static void main(String[] args) throws SQLException {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/20wh1a1256","root","1234");
			Statement stmt = con.createStatement();
			//String s = "INSERT INTO STUDENT VALUES(3,'Wakeel','Mumbai')";
			//String s = "UPDATE STUDENT SET Name = 'BEEMLA' WHERE RollNo=3";
			String s = "DELETE FROM STUDENT WHERE RollNo=1204";
			stmt.execute(s);
			con.close();
			System.out.println("Querey Execute...");
		}

	}
