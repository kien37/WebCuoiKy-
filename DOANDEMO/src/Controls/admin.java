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
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public admin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO dao=new DAO();
		String pass="";
		String password= request.getParameter("psw");
		String newpassword= request.getParameter("npsw");
		int idadmin=(int)getServletContext().getAttribute("idadmin");
		String query = "select dbo.laypass_theoidadmin("+idadmin+")";
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
			String query1 = "exec HOCVIEN_update "+idadmin+","+newpassword+"";
			dao1.myExec(query1);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
