package pack;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class deptaddevents
 */
@WebServlet("/deptaddevents")
@MultipartConfig(maxFileSize = 16177215)
public class deptaddevents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deptaddevents() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		InputStream ins;
		try
		{
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date cur_date = new Date();
			System.out.println(dateFormat.format(cur_date));
			String cur_date1=dateFormat.format(cur_date);
			System.out.println(cur_date1);
			HttpSession session=request.getSession();
			session.setAttribute("dep", "dep");
			
			System.out.println("Inside try.....");
			String event=request.getParameter("eventname");
			String place=request.getParameter("hallname");
			String dep= request.getParameter("dep");
			String incharge=request.getParameter("inchargename");
			String time=request.getParameter("time");
			String date=request.getParameter("date");
			System.out.println("data fetched.....");
			String status="pending";
			Part img = request.getPart("myfile");
			 ins = img.getInputStream();
			
			System.out.println("img fetched.....");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
			
			
			
			PreparedStatement ps = con.prepareStatement("insert into event(eventname,hallname,cdeptname,inchargename,date,status,img,time)values(?,?,?,?,?,?,?,?)");
			ps.setString(1, event);
			ps.setString(2, place);
			ps.setString(3, dep);		
			ps.setString(4, incharge);	
			ps.setString(5, date);	
			ps.setString(8, time);	
			ps.setBlob(7, ins);
			ps.setString(6, status);
			
		ps.executeUpdate();
			
			
			response.sendRedirect("clubdeptaddevent.jsp?success");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);;
	}
	}
}