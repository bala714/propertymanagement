package loginmodulespack;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/adminlogout")
public class adminlogout extends HttpServlet 
{
public void doPost(HttpServletRequest request ,HttpServletResponse response) throws IOException
{
	
	HttpSession session=request.getSession();
	session.removeAttribute("email");
	session.invalidate();
	response.sendRedirect("adminlogin.jsp");
	
	
}
}
