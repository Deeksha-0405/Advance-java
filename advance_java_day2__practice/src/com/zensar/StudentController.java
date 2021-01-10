package com.zensar;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import com.zensar.Bean.Student;


public class StudentController extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		String RequestAction=request.getParameter("requestAction");
		
		if(RequestAction.equalsIgnoreCase("viewAll"))
		{
			StudentRepository studentrepository=new StudentRepository();
			List<Student> listofStudent=studentrepository.getStudentdata();
			System.out.println("listofStudent"+listofStudent);
			
			RequestDispatcher rd=request.getRequestDispatcher("getStudentdata.jsp");
			request.setAttribute("listofStudent",listofStudent);
			try {
				rd.forward(request, response);
				
			}catch(Exception e) {
				System.out.println("Exception :"+e);
			}
		}
		
		else if(RequestAction.equalsIgnoreCase("delete"))
		{
			System.out.println("Deletion performed");
			int rollno=Integer.parseInt(request.getParameter("rollno"));
			StudentRepository studentrepository=new StudentRepository();
			studentrepository.deleteStudent(rollno);
			
			// using sendRedirect 
			try {
				response.sendRedirect("OptionSelect.jsp");
				
			}catch(Exception e) {
				System.out.println("Exception :"+e);
			}	
		}
		
		else if(RequestAction.equalsIgnoreCase("updateForm"))
		{
			System.out.println("Update performed");
			
			int rollno=Integer.parseInt(request.getParameter("rollno"));
			StudentRepository studentrepository=new StudentRepository();
			Student student=studentrepository.getStudent(rollno);
			
			RequestDispatcher rd=request.getRequestDispatcher("UpdateStudentForm.jsp");
			request.setAttribute("student",student);
			
			try {
				  rd.forward(request, response);
				
			}catch(Exception e) {
				System.out.println("Exception :"+e);
			}
			
			
		}
		
		else if(RequestAction.equalsIgnoreCase("updateForm"))
		{

		}
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String name=request.getParameter("name");
		String course=request.getParameter("course");
		int duration=Integer.parseInt(request.getParameter("duration"));
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String city=request.getParameter("city");
		
		System.out.println("Roll number :"+rollno);
		System.out.println("Student Name :"+name);
		System.out.println("Course :"+course);
		System.out.println("Duration :"+duration);
		System.out.println("Age :"+age);
		System.out.println("Gender :"+gender);
		System.out.println("city :"+city);
		
		RequestDispatcher rd=request.getRequestDispatcher("OptionSelect.jsp");
		request.setAttribute("rollno", rollno);
		request.setAttribute("name", name);
		request.setAttribute("course", course);
		request.setAttribute("duration", duration);
		request.setAttribute("age", age);
		request.setAttribute("gender", gender);
		request.setAttribute("city", city);
		try {
			rd.forward(request, response);
		}catch(Exception e) {
			System.out.println("Exception :"+e);
		}
		
		StudentRepository studentrepository=new StudentRepository();
		Student student=new Student(rollno, name, course, duration, age, gender, city);
		studentrepository.AddStudent(student);
		
	}
	

}
