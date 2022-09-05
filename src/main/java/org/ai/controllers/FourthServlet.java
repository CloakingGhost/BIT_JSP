package org.ai.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FristServlet
 */
//서블릿 초기화 패러미터
//서블릿 파일에 직접 기술,패키지 임포트 필요
//여러개의 페이지가 데이터를 공유받을 때 application 사용해야함
@WebServlet(urlPatterns = { "/initP1" }, initParams = { @WebInitParam(name = "userId", value = "aaaa"),
		@WebInitParam(name = "userPw", value = "1234") })
public class FourthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FourthServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

//	// HttpServletRequest 이걸 가지고 있는 녀석을 선택
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		System.out.println("service() 실행됨");
//		
//	}
//
//	// ServletConfig 이걸 가지고 있는 녀석을 선택
//	@Override
//	public void init(ServletConfig config) throws ServletException {
//		// TODO Auto-generated method stub
//		System.out.println("init() 실행됨");
//		// super.init(config);
//	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet() 호출됨");
		String userId = getInitParameter("userId");
		String userPw = getInitParameter("userPw");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><head></head></body>");//닫는 태그 형식을 위한다면 적어주는게 좋다
		out.print("아이디 : " + userId + "<br>");
		out.print("비밀번호 : " + userPw + "<br>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost() 호출됨");
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h2>userId : " + userId);
		out.print("<h2>userPw : " + userPw + "</h2>");
		out.close();
	}

}
