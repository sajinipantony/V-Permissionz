package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminupdateevent
 */
@WebServlet("/adminupdateevent")
public class adminupdateevent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminupdateevent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try
		{
			System.out.println("Inside try.....");
			String id=request.getParameter("id1");
			String eventname=request.getParameter("eventname");
			String hallname=request.getParameter("hallname");
			String department=request.getParameter("dept");
			String incharge=request.getParameter("incharge");
			String date=request.getParameter("date");
			String status=request.getParameter("status");
			System.out.println("data fetched.....");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
			Statement st=con.createStatement();
			st.executeUpdate("update event set eventname='"+eventname +"', hallname='"+hallname+"', cdeptname='"+department+"', inchargename='"+incharge+"' , status='"+status+"' where id='"+id+"'");
			
			con.close();
			response.sendRedirect("adminviewevents.jsp?"+"id="+id);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}