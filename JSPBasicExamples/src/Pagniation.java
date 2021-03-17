

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.package1.Emp;
import com.package1.EmpDbCon;

/**
 * Servlet implementation class Pagniation
 */
@WebServlet("/Pagniation")
public class Pagniation extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String spage = request.getParameter("page");
		int pageId = Integer.parseInt(spage);
		int total = 10;
		if (pageId == 1) {
			
		} else {
			pageId=pageId-1;  
			pageId=pageId*total+1;
		}
		
		List<Emp> list = EmpDbCon.getRecords(pageId, total);
		out.print("<h1>Page No: " + spage + "</h1>");
		out.print("<table border='1' cellpadding='4' width='60%'>");
		out.print("<tr><th>Id</th><th>Name</th><th>Salary</th>"); 
		for(Emp e:list) {
			out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getSalary()+"</td></tr>");
		}
		out.print("</table>");
		out.print("<a href='Pagniation?page=1'>1</a> ");
		out.print("<a href='Pagniation?page=2'>2</a> ");
		out.print("<a href='Pagniation?page=3'>3</a> ");

		out.close();
	}


}
