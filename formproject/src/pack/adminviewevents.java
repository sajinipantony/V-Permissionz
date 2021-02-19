package pack;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminviewevents
 */
@WebServlet("/adminviewevents")
public class adminviewevents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminviewevents() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		String id=request.getParameter("id");
System.out.println("id  :"+id);

		
	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery("select img from event where id='"+id+"'");
           
			 while(rs.next()) {
			            byte[] imgData = rs.getBytes("img");//Here r1.getBytes() extract byte data from resultSet 
			           
			            response.setHeader("expires", "0");
			            response.setContentType("image/jpg");

			            OutputStream os = response.getOutputStream(); // output with the help of outputStream 
			            os.write(imgData);
			            os.flush();
			            os.close();

			        }
			    st.close();
				c.close();
			 
			 
			    } catch (Exception e) {
			        // String message = "ERROR: " + ex.getMessage();
			    	System.out.println(""+e);
			    } 
	}

}