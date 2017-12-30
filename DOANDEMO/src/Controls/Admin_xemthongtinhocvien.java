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
import Model.hocvienentry;

/**
 * Servlet implementation class Admin_xemthongtinhocvien
 */
@WebServlet("/Admin_xemthongtinhocvien")
public class Admin_xemthongtinhocvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Admin_xemthongtinhocvien() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<hocvienentry> entries =new ArrayList<hocvienentry>();
		DAO dao = new DAO();
		String query = "select * from dbo.xemthongtin_hocvien()";
		
		try {
			ResultSet rs= dao.myExec(query);
			while(rs.next()) {
				int MAHV = rs.getInt("MAHV");
				String TENHV = rs.getString("TENHV");
				String TENDANGNHAP=rs.getString("TENDANGNHAP");
				String MATKHAU =rs.getString("MATKHAU");
				String EMAIL= rs.getString("EMAIL");
				String SDT= rs.getString("SDT");
				String GIOITINH= rs.getString("GIOITINH");				
				entries.add(new  hocvienentry(MAHV,TENHV, TENDANGNHAP, MATKHAU, EMAIL, SDT, GIOITINH));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("hocvienentries", entries);
		request.getRequestDispatcher("/WEB-INF/jsps/Amin_thongtinhocvien.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
