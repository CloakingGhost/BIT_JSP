package com.conan.vo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;

/**
 * Servlet implementation class test
 */
@WebServlet("/jsp/add.do")
public class ProductAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductAddController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		addDo(request, response);
	}

	public void addDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
		String dbid = "scott";
		String dbpw = "tiger";
		String sql = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		RequestDispatcher rd = null;
		ServletContext application = null;
		String path = application.getRealPath("./upload");
		String uploadedFolder = request.getServletContext().getContextPath() + "/upload";
		MultipartRequest multi = new MultipartRequest(request, uploadedFolder, 100 * 1024 * 1024, "UTF-8",
				new DefaultFileRenamePolicy());
		
		String fileName = multi.getOriginalFileName("uploadFile");
		System.out.println(fileName);

		request.setCharacterEncoding("utf-8");
		Product p = new Product(multi.getParameter("proId"), multi.getParameter("proName"),
				Integer.parseInt(multi.getParameter("unitPrice")), multi.getParameter("description"),
				multi.getParameter("manufacturer"), multi.getParameter("category"),
				Integer.parseInt(request.getParameter("noOfStock")), fileName);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbid, dbpw);
			sql = "insert into products value(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getProId());
			pstmt.setString(2, p.getProName());
			pstmt.setInt(3, p.getUnitPrice());
			pstmt.setString(4, p.getDescription());
			pstmt.setString(5, p.getManufacturer());
			pstmt.setString(6, p.getCategory());
			pstmt.setInt(7, p.getNoOfStock());
			pstmt.setString(8, p.getFileName());
			pstmt.executeUpdate();

			rd = request.getRequestDispatcher("ProductListController");
			rd.forward(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
