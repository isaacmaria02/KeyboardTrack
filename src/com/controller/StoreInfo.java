package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Jdbc;
import com.model.LogData;

/**
 * Servlet implementation class StoreInfo
 */
public class StoreInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String paragraph="Emotion is a mental state variously associated with thoughts feelings behavioural responses and a degree of pleasure or displeasure.";
		
		String paragraphSeparated[] = paragraph.split(" ");
		
		String typedSeparated[] = request.getParameter("test").split(" ");
		
		
		//System.out.println(request.getParameter("seconds")+" "+request.getParameter("test"));

		int correct=0;
		int num=0;
		
		for(int i=0; i<typedSeparated.length; i++)
		{
			num++;
			if(paragraphSeparated[i].equals(typedSeparated[i])) {
				correct++;
			}
		}
		
		
		HttpSession ses = request.getSession();
		
		LogData ld = new LogData();
		ld.setName((String)ses.getAttribute("name"));
		ld.setAccuracy(((float)correct/num*100));
		ld.setSeconds(Integer.parseInt(request.getParameter("seconds")));
		ld.setMood((String)ses.getAttribute("mood"));
		
		System.out.println(ld.toString());
		
		Jdbc x = new Jdbc();
		int i=x.saveData(ld);
		
	
		
		
		response.sendRedirect("thankyou.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
