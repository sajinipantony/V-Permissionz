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
 * Servlet implementation class clubupdate
 */
@WebServlet("/clubupdate")
public class clubupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			System.out.println("inside try....");
			String id=request.getParameter("id1");
			String fname=request.getParameter("name");
			String email=request.getParameter("email");
			String dept=request.getParameter("dept");
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
			Statement st=con.createStatement();
			st.executeUpdate("update login set nname='"+fname+"', email='"+email+"', dept='"+dept+"' where id='"+id+"'");
			
			
			response.sendRedirect("clubupdate.jsp");
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception occure..."+e);
		}
		
		
		
	}



	}
