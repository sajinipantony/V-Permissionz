package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class watchman_chnge_pwd
 */
@WebServlet("/watchman_chnge_pwd")
public class watchman_chnge_pwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public watchman_chnge_pwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try{
			System.out.println("inside try....");
			
			
			HttpSession session=request.getSession();
			String id = session.getAttribute("hod_id").toString();
			
			String cur_pwd=request.getParameter("cur_pwd");
			String new_pwd=request.getParameter("new_pwd");	
			String con_pwd=request.getParameter("con_pwd");
			String pwd=null;
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
			Statement st=con.createStatement();
			ResultSet rs=null;
			rs=st.executeQuery("select * from login  where id='"+id+"' ");
			while(rs.next())
			{
				
				pwd=rs.getString(11);
			}
			
			if((cur_pwd.equals(pwd))&&((new_pwd.equals(con_pwd))))
			{
			
			//Statement st=con.createStatement();
			st.executeUpdate("update login set pwd='"+con_pwd+"' where id='"+id+"'  ");
			session.setAttribute("msg","Password Updated..." );
			response.sendRedirect("watchmanupdatepassword.jsp?"+"updated");
			
			}
			else
			{
				session.setAttribute("msg","Mismatch in Password..." );	
				response.sendRedirect("watchmanupdatepassword.jsp?"+"mismatch");
				
			}
			
		//	response.sendRedirect("hod_update_pwd.jsp?");
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception occured..."+e);
		}
		
		
	}
}