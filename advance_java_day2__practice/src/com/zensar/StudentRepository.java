package com.zensar;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.zensar.Bean.Student;
import com.zensar.utility.DBUtil;

public class StudentRepository {
	
	public void AddStudent( Student student) {
		
		Connection con =DBUtil.getMySqlDBConnection();
		String sql="insert into student value(?, ?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1,student.getRollno());
			pst.setString(2, student.getName());
			pst.setString(3,student.getCourse());
			pst.setInt(4, student.getDuration());
			pst.setInt(5, student.getAge());
			pst.setString(6, student.getGender());
			pst.setString(7, student.getCity());
			int result=pst.executeUpdate();
			if(result==0)
			{
				System.out.println("No insertion done");
			}
			else {
				System.out.println("Insertion done");
			}
			
			
		}catch(Exception e) {
			System.out.println("Exception :"+e);
		}
	}
	
	public List<Student> getStudentdata(){
		List<Student> listofStudent= new ArrayList<Student>();
		
		Connection con=DBUtil.getMySqlDBConnection();
		String sql="select * from student";
		
		try {
			
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				int rollno=rs.getInt("roll_number");
				String name=rs.getString("student_name");
				String course=rs.getString("course");
				int duration=rs.getInt("duration");
				int age=rs.getInt("age");
				String gender=rs.getString("gender");
				String city=rs.getString("location");
				
				Student student=new Student(rollno, name, course, duration, age, gender, city);
				listofStudent.add(student);
				
			}
			
		}catch(Exception e) {
			System.out.println("Exception :"+e);
		}
		return listofStudent;
		
	}
	
	public void deleteStudent(int rollno) {
		
		Connection con=DBUtil.getMySqlDBConnection();
		String sql="delete from student where roll_number=?";
		
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, rollno);
			int result=pst.executeUpdate();
			if(result==0)
			{
				System.out.println("No update done");
			}
			else {
				System.out.println("Update done");
			}
			
		}catch(Exception e) {
			System.out.println("Exception :"+e);
		}
	}
	
	public Student getStudent(int rollno) {
		
		Student student=null;
		Connection con=DBUtil.getMySqlDBConnection();
		String sql="select * from student where roll_number=?";
		
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, rollno);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				String name=rs.getString("student_name");
				String course=rs.getString("course");
				int duration=rs.getInt("duration");
				int age=rs.getInt("age");
				String gender=rs.getString("gender");
				String city=rs.getString("location");
				
				student=new Student(rollno, name, course, duration, age, gender, city);
				
			}
			
		}catch(Exception e) {
			System.out.println("Exception :"+e);
		}
		
		
		return student;
	}

}
