package Controls;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.cauhoientry;

/**
 * Servlet implementation class giaovien_chitietde
 */
@WebServlet("/giaovien_chitietde")
public class giaovien_chitietde extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giaovien_chitietde() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<cauhoientry> entries =new ArrayList<cauhoientry>();
		DAO dao = new DAO();
		String query = "select * from CAUHOI";
		
		try {
			ResultSet rs= dao.myExec(query);
			while(rs.next()) {
				int MACH = rs.getInt("MACH");
				String TENCH = rs.getString("TENCH");
				int DADUNG=rs.getInt("MADADUNG");
								
				entries.add(new cauhoientry(MACH,TENCH,DADUNG));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("cauhoientries", entries);
		request.getRequestDispatcher("/WEB-INF/jsps/giaovien_chitietde.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
