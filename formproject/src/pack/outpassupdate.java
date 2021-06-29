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
 * Servlet implementation class outpassupdate
 */
@WebServlet("/outpassupdate")
public class outpassupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public outpassupdate() {
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
			System.out.println("inside try....");
			String id= request.getParameter("id1");
			String status=request.getParameter("status");
			String status1="granded";
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
			Statement st=con.createStatement();
			st.executeUpdate("update outpass set status='"+status1+"' where id='"+id+"' ");
				response.sendRedirect("clubdeptviewoutpass1.jsp?"+"id="+id);
				
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception occured..."+e);
		}
		
		
		
	}

}
