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
import loginmodulespackdao.insertcomplaint;
import loginmodulespackdao.adminregister;
@WebServlet("/adminreg")
public class adminreg extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		
		String  name=request.getParameter("name");
		String 	Email=request.getParameter("Email");
		String price=request.getParameter("price");
		
		String 	shop=request.getParameter("shop");
		
		adminregister in= new adminregister();
		if(in.insert1(name,Email,price,shop)>=1)
				{
				System.out.println("values inserted in db");
				//HttpSession session=request.getSession();
				//session.setAttribute("username",uname);
				response.sendRedirect("adminregister.jsp");
				
				}
		

		
		
		
		
		
	





}

}
