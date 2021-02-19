package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class studentaddleaveform
 */
@WebServlet("/studentaddleaveform")
public class studentaddleaveform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentaddleaveform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
		String status="pending";
		String date=request.getParameter("date");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String dep=request.getParameter("dep");
		String purpose=request.getParameter("purpose");
		HttpSession session = request.getSession();
		session.setAttribute("firstname", "firstname");
		session.setAttribute("dep", "dep");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
		
		
		
		PreparedStatement ps = con.prepareStatement("insert into leaveform(fname,lname,clbdpt,purpose,date,status) values (?,?,?,?,?,?)");
		
		ps.setString(1, firstname);
		ps.setString(2, lastname);			
		ps.setString(3, dep);					
		ps.setString(4, purpose);
		ps.setString(5, date);		
		ps.setString(6, status);
		ps.executeUpdate();
		
		System.out.println("inserted............");
		response.sendRedirect("studentleaveform.jsp?success");
		con.close();
	}
	catch(Exception e)
	{
		System.out.println(e);;
}
}
			

}
