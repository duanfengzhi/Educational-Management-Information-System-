package com.hfut.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hfut.domain.Student;


public class StudentLoginFilter implements Filter {
    private static final String LOGIN_PREFIX = "/student/",
                                LOGIN_KEYWORD = "Login",
                                LOGIN_PAGE = "index.jsp";
    public static final String ATTR_STUDENT = "Student";
    
    public void init(FilterConfig filterConfig) {}
    
    public void doFilter(ServletRequest request, ServletResponse response, 
            FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession();
        
        String requestURI = req.getRequestURI();
        String uri = requestURI.substring(requestURI.indexOf(LOGIN_PREFIX));
        if (uri.indexOf(LOGIN_KEYWORD) == -1) {
            Student student = (Student)session.getAttribute(ATTR_STUDENT);
            if (student == null) {
                String loginUri = "../" +  LOGIN_PAGE;
                System.out.println("用户未登录,请先登录!");
                ((HttpServletResponse)response).sendRedirect(loginUri);
                return;               
            }
            else {
            	System.out.println("用户登录成功");
            }
        }
        chain.doFilter(request, response);
    }

    public void destroy() {}
}