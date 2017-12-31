package Controls;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;


@WebServlet("/hocvien_thi")
public class hocvien_thi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public hocvien_thi() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsps/hocvien_baithi.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int diem = 0;
		for (int i = 0; i < 10; i++) {
			String made = request.getParameter("made" + i);
			String sql = "select * from CAUHOI where MACH=" + made;
			DAO da = new DAO();
			try {
				ResultSet rs = da.myExec(sql);
				String dapan = request.getParameter("" + i);
				if (rs.next())
					if (rs.getString("MADADUNG").equals(dapan)) {
						diem++;
					}
				System.out.println("" + diem);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		request.getRequestDispatcher("/ketquathi.jsp?ketqua="+diem).forward(request, response);
	}

}
