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

import com.hfut.domain.Teacher;


public class TeacherLoginFilter implements Filter {
    private static final String LOGIN_PREFIX = "/teacher/",
                                LOGIN_KEYWORD = "Login",
                                LOGIN_PAGE = "index.jsp";
    public static final String ATTR_TEACHER = "Teacher";
    
    public void init(FilterConfig filterConfig) {}
    
    public void doFilter(ServletRequest request, ServletResponse response, 
            FilterChain chain) throws ServletException, IOException {
    	System.out.println("teacher filter in");
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession();
        
        String requestURI = req.getRequestURI();
        String uri = requestURI.substring(requestURI.indexOf(LOGIN_PREFIX));
        if (uri.indexOf(LOGIN_KEYWORD) == -1) {
            Teacher teacher = (Teacher)session.getAttribute(ATTR_TEACHER);
            if (teacher == null) {
                String loginUri = "../" +  LOGIN_PAGE;
                ((HttpServletResponse)response).sendRedirect(loginUri);
                return;               
            }
        }
        System.out.println("111111111111111111");
        System.out.println("teacher filter out");
        chain.doFilter(request, response);
    }

    public void destroy() {}
}