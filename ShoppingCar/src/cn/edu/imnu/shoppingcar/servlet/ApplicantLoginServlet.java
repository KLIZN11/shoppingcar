package cn.edu.imnu.shoppingcar.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.imnu.shoppingcar.bean.Applicant;
import cn.edu.imnu.shoppingcar.dao.ApplicantDAO;
import cn.edu.imnu.shoppingcar.util.CookieEncryptTool;

/**
 * Servlet implementation class ApplicantLoginServlet
 */
@WebServlet("/ApplicantLoginServlet")
public class ApplicantLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicantLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String remerberMe=request.getParameter("remerberMe");
		ApplicantDAO dao = new ApplicantDAO();
		int applicantID =dao.login(email,password);
		if(applicantID!=0) {
			Applicant applicant=new Applicant(applicantID,email,password);
			request.getSession().setAttribute("SESSION_APPLICANT",applicant);
			remerberMe(remerberMe,email,password,request,response);
				response.sendRedirect("regsuccess.jsp");
		}else {
			out.print("<script type='text/javascript'>");
			out.print("alert('用户名或密码错误，请重新输入！');");
			out.print("window.location='login.jsp';");
			out.print("</script>");
		}
	}

	private void remerberMe(String remerberMe, String email, String password, HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		if("true".equals(remerberMe)) {
			Cookie cookie=new Cookie("SESSION_APPLICANTEMAIL",CookieEncryptTool.encodeBase64(email));
			cookie.setPath("/");
			cookie.setMaxAge(365*24*3600);
			response.addCookie(cookie);
			cookie =new Cookie("SESSION_APPLICANTPWD",CookieEncryptTool.encodeBase64(password));
			cookie.setPath("/");
			cookie.setMaxAge(365*24*3600);
			response.addCookie(cookie);
		}else {
			Cookie[] cookies=request.getCookies();
			if(cookies!=null) {
				for(Cookie cookie:cookies ) {
					if("COOKIE_APPLICANTEMAIL".equals(cookie.getName())||"COOKIE_APPLICANTPWD".equals(cookie.getName())) {
						cookie.setMaxAge(0);
						cookie.setPath("/");
						response.addCookie(cookie);
					}
				}
			}
		}
	}

}
