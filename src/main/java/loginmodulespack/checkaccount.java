package loginmodulespack;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import h1.DBUtil;
import loginmodulespackdao.CheckDao;
import loginmodulespackdao.insertvalue;
@WebServlet("/checkaccount")
public class checkaccount extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		
		String  uname=request.getParameter("fullname");
		String 	pass=request.getParameter("Password");
		String email=request.getParameter("EmailId");
		String 	org=request.getParameter("city");
		
	
			CheckDao checkdao=new CheckDao();
			
							
					if(checkdao.check(email))
					{
						HttpSession session=request.getSession();
						session.setAttribute("email",email);
						
						
						response.sendRedirect("createnewaccount.jsp");
						
								}
								else
								{
									insertvalue in= new insertvalue();
									if(in.insert(uname,pass,email,org)>=1)
											{
											System.out.println("values inserted in db");
											HttpSession session=request.getSession();
											session.setAttribute("username",uname);
											response.sendRedirect("login.jsp");
											
											}
									
						
									
									
									
									
									
								}
							
							
					

		
	}

}
