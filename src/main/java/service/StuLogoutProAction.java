package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StuLogoutProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("StuLogoutProAction start...");
		
		HttpSession session = request.getSession();
		session.invalidate();
		System.out.println("로그아웃 완료...");
		
		return "clsList.jsp";
	}

}
