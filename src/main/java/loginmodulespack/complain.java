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
import loginmodulespackdao.insertcomplaint;
@WebServlet("/complaint")
public class complain extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		
		String  name=request.getParameter("name");
		String 	Email=request.getParameter("Email");
		String complain=request.getParameter("subject");
		String 	elaborate=request.getParameter("elaborate");
		
	
			
								
									insertcomplaint in= new insertcomplaint();
									if(in.insert1(name,Email,complain,elaborate)>=1)
											{
											System.out.println("values inserted in db");
											
											response.sendRedirect("contact.jsp");
											
											}
									
						
									
									
									
									
									
								
							
							
					

		
	}

}
