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

import com.hfut.domain.Boss;
import com.hfut.domain.Manager;


public class ManagerLoginFilter implements Filter {
    private static final String LOGIN_PREFIX = "/admin/",
                                LOGIN_KEYWORD = "Login",
                                LOGIN_PAGE = "index.jsp";
    public static final String ATTR_MANAGER = "Manager";
    
    public void init(FilterConfig filterConfig) {}
    
    public void doFilter(ServletRequest request, ServletResponse response, 
            FilterChain chain) throws ServletException, IOException {
    
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession();
        String requestURI = req.getRequestURI();
        String uri = requestURI.substring(requestURI.indexOf(LOGIN_PREFIX));
        if (uri.indexOf(LOGIN_KEYWORD) == -1) {
            Manager mng = (Manager)session.getAttribute(ATTR_MANAGER);
            if (mng == null) {
                String loginUri = "../" +  LOGIN_PAGE;
                System.out.println("Î´µÇÂ¼,ÇëÏÈµÇÂ¼!");
                ((HttpServletResponse)response).sendRedirect(loginUri);
                return;               
            }
            else {
            	System.out.println("ÄúÒÑµÇÂ¼");
            }
        }
        chain.doFilter(request, response);
    }

    public void destroy() {}
}