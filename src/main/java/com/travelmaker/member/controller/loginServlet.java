package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String a =req.getParameter("var1");
		String b =req.getParameter("var2");
		System.out.println("do GET");
		System.out.println("a : " + a);
		System.out.println("b : " + b);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String a =req.getParameter("var1");
		String b =req.getParameter("var2");
		System.out.println("do post ");
	}
}
