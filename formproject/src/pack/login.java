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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		HttpSession session=request.getSession();
		if(role.equals("ADMIN"))
		{
			
			
		try{
			
			ResultSet rs=null;
			String id1=null;
			int id=0;
			String email=null;
			String dept=null;
			String name=null;
		
			
		
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
					Statement st=con.createStatement();
					System.out.println("helloooooo");
					rs=st.executeQuery("select * from login where email='"+username+"' and pwd='"+password+"'");
					System.out.println("select * from login where email='"+username+"' and pwd='"+password+"'");
					
					while(rs.next())
					{
						id1=rs.getString(1);
						id=rs.getInt(1);
						name=rs.getString(2);
						
						email=rs.getString(3);
						dept=rs.getString(6);
						session.setAttribute("email", email);
						System.out.println("dept  :  "+dept);
						session.setAttribute("dept", dept);
							
					}
					if(id>0)
					{
					response.sendRedirect("admin_homepg.jsp");
					}
				
					else
					{
						response.sendRedirect("index.jsp?fail");
					}
			}
		catch(Exception e)
					{
						System.out.println(e);
					}
		}
		else if(role.equals("CLUBS AND DEPARTMENTS"))
		{
			try
			{
				String id1=null;
				int id=0;
			ResultSet rs=null;
			String email=null;
			String deptid=null;
			String deptname=null;
			String name=null;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
					Statement st=con.createStatement();
					
					rs=st.executeQuery("select * from login where email='"+username+"' and pwd='"+password+"'");
					while(rs.next())
					{
						id1=rs.getString(1);
						id=rs.getInt(1);
						name=rs.getString(2);
						email=rs.getString(3);
						deptname=rs.getString(6);
						session.setAttribute("username", username);
						System.out.println("dept  :  "+deptname);
						session.setAttribute("deptname", deptname);
						session.setAttribute("email", email);
						session.setAttribute("id", id);
					}
					if(id>0)
					{
						response.sendRedirect("clubdepthomepage.jsp");
					}
					else
					{
						response.sendRedirect("index.jsp?fail");
					}
					st.close();
					con.close();
					
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		
		else if(role.equals("STUDENT"))
		{
			try
			{
				String id1=null;
int id=0;
			ResultSet rs=null;
			String uname=null;
			String dept=null;
			String email=null;
			String sem=null;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
					Statement st=con.createStatement();
					
					rs=st.executeQuery("select * from login where email='"+username+"' and pwd='"+password+"'");
					while(rs.next())
					{
						id1=rs.getString(1);
						id=rs.getInt(1);
						
						uname=rs.getString(2);
						email=rs.getString(3);
						dept=rs.getString(6);
					
						session.setAttribute("uname", uname);
						System.out.println("dept  :  "+dept);
						session.setAttribute("dept", dept);
						session.setAttribute("email", email);
						
					}
					if(id>0)
					{
						response.sendRedirect("studenthomepage.jsp");
					}
					else
					{
						response.sendRedirect("index.jsp?fail");
					}
					st.close();
					con.close();
					
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		
		
		else if(role.equals("WATCHMAN"))
		{
			try
			{
				String id1=null;
int id=0;
			ResultSet rs=null;
			String uname=null;
			String dept=null;
			String name=null;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
					Statement st=con.createStatement();
					
					rs=st.executeQuery("select * from login where email='"+username+"' and pwd='"+password+"'");
					while(rs.next())
					{
						id1=rs.getString(1);
						id=rs.getInt(1);
						name=rs.getString(2);
						dept=rs.getString(6);
						
						session.setAttribute("username", uname);
						System.out.println("dept  :  "+dept);
						session.setAttribute("dept", dept);
						session.setAttribute("name", name);
						
					}
					if(id>0)
					{
						response.sendRedirect("watchman_homepg.jsp");
					}
					else
					{
						response.sendRedirect("index.jsp?fail");
					}
					st.close();
					con.close();
					
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		
		
		
		
		
	}

}
