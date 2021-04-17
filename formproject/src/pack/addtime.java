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
 * Servlet implementation class addtime
 */
@WebServlet("/addtime")
public class addtime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtime() {
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
		
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		
		HttpSession session = request.getSession();
		session.setAttribute("date", "date");
		session.setAttribute("time", "time");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
		
		
		
		PreparedStatement ps = con.prepareStatement("insert into timeslot(date,time) values (?,?)");
		
		ps.setString(1, date);
		ps.setString(2, time);			
		
		ps.executeUpdate();
		
		System.out.println("inserted............");
		response.sendRedirect("addtime.jsp?success");
		con.close();
	}
	catch(Exception e)
	{
		System.out.println(e);;
}
		
		
	}

}