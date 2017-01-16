package com.example.exception;

import java.net.BindException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.ObjectError;
import org.springframework.*;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(BindException.class)
	public ModelAndView handlerWebccException(HttpServletResponse response, BindException exception) throws Exception {
		
		ModelAndView mav = new ModelAndView("script-alert");
		
//		StringBuilder message = new StringBuilder();
//		for (ObjectError objectError : exception.getAllErrors()){
//			
//		}
		
		//mav.addObject("message", message.toString());
		
		//mav.addObject("message", message.toString());
		
		return mav;
		
	}

}
