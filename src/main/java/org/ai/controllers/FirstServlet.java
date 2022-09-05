package org.ai.controllers;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//HttpServletRequest(인터페이스) - HttpServlet(클래스) - 클래스(위에것들을 상속받은 내가만든 클래스)
//지금 보면 서비스 이닛 디스트로이가 없다 ,컨트롤 스페이스로 재정의 했음
// web.xml을 찾아가서 설정하고 다시 이 클래스로 와서 클래스를 실행
/**
 * Servlet implementation class FristServlet
 */
//@WebServlet("/FirstServlet")
@WebServlet("/hello2")//나는 주소창에 /hello2를 입력할거임
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FirstServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	// HttpServletRequest 이걸 가지고 있는 녀석을 선택
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service() 실행됨");
		// super.service(req, resp);
	}

	// ServletConfig 이걸 가지고 있는 녀석을 선택
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init() 실행됨");
		// super.init(config);
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
		doGet(request, response);// <- doGet에서 처리함
	}

}
