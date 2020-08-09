package loginmodulespack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
@WebServlet("/mailsend")
public class mailsend extends HttpServlet {

	public  void  doPost(HttpServletRequest request,HttpServletResponse response)
	{
		String email=request.getParameter("email");
		String sql="select pass from createaccnt where EmailId=?";
		try
		{
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bala","root","skcet123");
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			String to=email;//change accordingly
			//Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("xperiae10300@gmail.com","skcet123");
			}
			}
			);

			//compose message
			MimeMessage message = new MimeMessage(session);

			message.setFrom(new InternetAddress("xperiae10300@gmail.com"));//change accordingly

			message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));

			message.setSubject("forgot password");

			message.setText("Your password is :"+rs.getNString(1));
			//send message
			Transport.send(message);
			System.out.println("message sent successfully");
			response.sendRedirect("login.jsp");
		}
		} 
		catch (Exception e)
		{
			System.out.println(e);
			}
			}  
	}

