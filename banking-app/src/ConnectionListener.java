import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.*;

@WebListener
public class ConnectionListener implements ServletContextListener 
{
	public void contextInitialized(ServletContextEvent sce) 
	{
		try
		{
			ServletContext context=sce.getServletContext();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/webapp10","root","mysql");
			PreparedStatement pslogin=cn.prepareStatement("select * from accountinfo where userid=?");
			context.setAttribute("login",pslogin);
			PreparedStatement psbal=cn.prepareStatement("select amount from accountinfo where accountno=?");
			context.setAttribute("balance",psbal);
			PreparedStatement psdepo=cn.prepareStatement("update accountinfo set amount=amount+? where accountno=?");
			context.setAttribute("deposit",psdepo);
			PreparedStatement pswd=cn.prepareStatement("update accountinfo set amount=amount-? where accountno=?");
			context.setAttribute("withdraw",pswd);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
}
