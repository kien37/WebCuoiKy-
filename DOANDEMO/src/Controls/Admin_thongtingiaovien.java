package Controls;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.giaovienentry;

/**
 * Servlet implementation class Admin_thongtingiaovien
 */
@WebServlet("/Admin_thongtingiaovien")
public class Admin_thongtingiaovien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_thongtingiaovien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
		
	}

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<giaovienentry> entries =new ArrayList<giaovienentry>();
		DAO dao = new DAO();
		String query = "select * from dbo.xemthongtin_giaovien()";
		
		try {
			ResultSet rs= dao.myExec(query);
			while(rs.next()) {
				int MAGV = rs.getInt("MAGV");
				String TENGV = rs.getString("TENGV");
				String TENDANGNHAP=rs.getString("TENDANGNHAP");
				String MATKHAU =rs.getString("MATKHAU");
				String EMAIL= rs.getString("EMAIL");
				String SDT= rs.getString("SDT");
				String GIOITINH= rs.getString("GIOITINH");				
				entries.add(new  giaovienentry(MAGV,TENGV, TENDANGNHAP, MATKHAU, EMAIL, SDT, GIOITINH));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("giaovienentries", entries);
		request.getRequestDispatcher("/WEB-INF/jsps/Admin_thongtingiaovien.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
