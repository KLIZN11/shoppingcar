package cn.edu.imnu.shoppingcar.bean;

import java.util.Date;

public class Applicant {
	private int applicantID;
	private String applicantEmail;
	private String applicantPwd;
	private Date applicantRegistDate;
	public Applicant() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Applicant(int applicantID, String applicantEmail, String applicantPwd) {
		super();
		this.applicantID = applicantID;
		this.applicantEmail = applicantEmail;
		this.applicantPwd = applicantPwd;
	
	}
	public int getApplicantID() {
		return applicantID;
	}
	public void setApplicantID(int applicantID) {
		this.applicantID = applicantID;
	}
	public String getApplicantEmail() {
		return applicantEmail;
	}
	public void setApplicantEmail(String applicantEmail) {
		this.applicantEmail = applicantEmail;
	}
	public String getApplicantPwd() {
		return applicantPwd;
	}
	public void setApplicantPwd(String applicantPwd) {
		this.applicantPwd = applicantPwd;
	}
	public Date getApplicantRegistDate() {
		return applicantRegistDate;
	}
	public void setApplicantRegistDate(Date applicantRegistDate) {
		this.applicantRegistDate = applicantRegistDate;
	}
	
}
