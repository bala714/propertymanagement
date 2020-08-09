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
import loginmodulespackdao.checkdate;
import loginmodulespackdao.register1;
@WebServlet("/register")
public class register extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		
		String  name=request.getParameter("name");
		String 	Email=request.getParameter("Email");
		String price=request.getParameter("price");
		String 	date=request.getParameter("date");
		String 	shop=request.getParameter("shop");
		
	
			
		checkdate check1=new checkdate();
		
		
		if(check1.check(date,shop))
		{
			HttpSession session=request.getSession();
			session.setAttribute("date",date);
			
			
			
			
			
			response.sendRedirect("failed.jsp");
			
					}
					else
					{
									register1 in= new register1();
									if(in.insert1(name,Email,price,date,shop)>=1)
											{
											System.out.println("values inserted in db");
											//HttpSession session=request.getSession();
											//session.setAttribute("username",uname);
											response.sendRedirect("success.jsp");
											
											}
									
						
									
									
									
									
									
								
							
							
					

		
	}

}}
