package org.ai.member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ai.beans.Members;

/**
 * Servlet implementation class Member
 */
@WebServlet("/0905/ex06Member/joinProc.do")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Member() {
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
		System.out.println("dopost");
		actionDo(request, response);
	}

	public void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String userName = request.getParameter("userName");
		String phoneNo = request.getParameter("phoneNo");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		RequestDispatcher rd = null;

		String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
		String dbid = "scott";
		String dbpw = "tiger";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<Members> members = new ArrayList<>();

		if (userId.isEmpty() || userPw.isEmpty()) {
			rd = request.getRequestDispatcher("joinFrm.jsp");
			rd.forward(request, response);
			return;
		}

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbid, dbpw);
			System.out.print("연결 ㅇㅇ");
			Members mem = new Members(userId, userPw, userName, phoneNo, address, email);

			sql = "insert into Members(userId, userPw, userName, phoneNo, address, email) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getUserId());
			pstmt.setString(2, mem.getUserPw());
			pstmt.setString(3, mem.getUserName());
			pstmt.setString(4, mem.getPhoneNo());
			pstmt.setString(5, mem.getAddress());
			pstmt.setString(6, mem.getEmail());
			pstmt.executeUpdate();

			sql = "select * from Members";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				members.add(new Members(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
			request.setAttribute("members", members);
			rd = request.getRequestDispatcher("joinResult.jsp");
			rd.forward(request, response);
		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			try {

				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
