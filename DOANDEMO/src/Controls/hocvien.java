package Controls;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

/**
 * Servlet implementation class hocvien
 */
@WebServlet("/hocvien")
public class hocvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public hocvien() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao=new DAO();
		
		String pass="";
		String password= request.getParameter("psw");
		String newpassword= request.getParameter("npsw");
		int idhocvien=(int)getServletContext().getAttribute("idhocvien");
		String query = "select dbo.laypass_theoidhocvien("+idhocvien+")";
		ResultSet rs=dao.myExec(query);
		
		try
		{
			while(rs.next())
		{
			pass=rs.getString(1);
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(pass.equals(password))
		{
			DAO dao1=new DAO();
			String query1 = "exec HOCVIEN_update "+idhocvien+","+newpassword+"";
			dao1.myExec(query1);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
