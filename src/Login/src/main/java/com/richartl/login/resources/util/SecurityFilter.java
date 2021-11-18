/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.login.resources.util;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author richartl
 */
public class SecurityFilter implements Filter
{
    public SecurityFilter()
    { 
    }

    public void init(FilterConfig conf) throws ServletException
    {
    }
    public void destroy()
    {
    }

    public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) {
        
    }

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        
        HttpServletRequest request = (HttpServletRequest) sr;
        HttpServletResponse response = (HttpServletResponse) sr1;
        HttpSession session = request.getSession(false);

        if(session == null) {
            request.getRequestDispatcher("/").forward(request, response);
        } else {
            request.getRequestDispatcher("/welcomePage.jsp").forward(request, response);
        }
    }
}
