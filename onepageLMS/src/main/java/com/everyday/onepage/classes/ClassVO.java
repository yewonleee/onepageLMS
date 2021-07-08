package com.everyday.onepage.classes;

public class ClassVO {
	private int id; //classID
	private String instructorEmail;
	private boolean active;
	private String className;
	private String classContent;
	private String startDate;
	private int weeks;
	private int days;
	private int folderID; // lms_class attributes 변수 
	private int attendanceID;
	
	public int getAttendanceID() {
		return attendanceID;
	}
	public void setAttendanceID(int attendanceID) {
		this.attendanceID = attendanceID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getInstructorEmail() {
		return instructorEmail;
	}
	public void setInstructorEmail(String instructorEmail) {
		this.instructorEmail = instructorEmail;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassContent() {
		return classContent;
	}
	public void setClassContent(String classContent) {
		this.classContent = classContent;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public int getWeeks() {
		return weeks;
	}
	public void setWeeks(int weeks) {
		this.weeks = weeks;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public int getFolderID() {
		return folderID;
	}
	public void setFolderID(int folderID) {
		this.folderID = folderID;
	}
}
