package service;

import java.util.List;

import entity.Student_info;


public interface StudentDAO {
	public List<Student_info> queryAllStudents();
	public Student_info queryStudentBySid(String sid);
	public boolean addStudent(Student_info s);
	public boolean updateStudent(Student_info s);
	public boolean deleteStudent(String sid);
	public List<Student_info> queryRecordsByPage(int page, boolean flag);
	public int getRowsnum();
	public List<Student_info> queryFilter(String sid, String sname, String gender, String political,
			String sprov, String scity, String tel, String sqq, int page, boolean flag);
	public List<Student_info> queryFilterSchool(String activity, String honor, String startyear, String endyear, int page, boolean flag);
	public List<Student_info> queryFilterJob(String time, String type, String cname, String job, String comment, int page, boolean flag);

	public int queryFilter(String sid, String sname, String gender, String political,
			String sprov, String scity, String tel, String sqq);
	public int queryFilterSchool(String activity, String honor, String startyear, String endyear);
	public int queryFilterJob(String time, String type, String cname, String job, String comment);

}
