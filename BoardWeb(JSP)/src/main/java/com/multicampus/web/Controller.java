package com.multicampus.web;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface Controller {

	String handleRequest(HttpServletRequest request, HttpServletResponse response);

}
