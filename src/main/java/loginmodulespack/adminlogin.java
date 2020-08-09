package loginmodulespack;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import loginmodulespackdao.adminlogindao;
@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException 
	{
		String  email=req.getParameter("Emailid");
		String 	pass=req.getParameter("Password");
		
		System.out.println(email+" "+pass);
		
		adminlogindao dao=new adminlogindao();
		
			
				
		
			if(dao.check(email,pass))
					{
									HttpSession session=req.getSession();
									session.setAttribute("email",email);
									res.sendRedirect("adminindex.jsp");
								}
								else
								{
									
									
									
									res.sendRedirect("adminlogin.jsp");
									
								}
							
							
					
						}
					}
	
