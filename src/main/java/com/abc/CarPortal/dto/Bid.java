package com.abc.CarPortal.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bid {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long bid;
	private Long userId;
	private Long cid;
    private String userName;
    private String carname;
    private String day;
    private String mobile;
	private String model;
	private String registration;
	private String address;
	private String mode;
	private String time;
	private String mailid;
	private String status;
	
	public Bid() {
		// TODO Auto-generated constructor stub
	}

	public Long getBid() {
		return bid;
	}

	public void setBid(Long bid) {
		this.bid = bid;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getCid() {
		return cid;
	}

	public void setCid(Long cid) {
		this.cid = cid;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCarname() {
		return carname;
	}

	public void setCarname(String carname) {
		this.carname = carname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getRegistration() {
		return registration;
	}

	public void setRegistration(String registration) {
		this.registration = registration;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getMailid() {
		return mailid;
	}

	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	@Override
	public String toString() {
		return "Bid [bid=" + bid + ", userId=" + userId + ", cid=" + cid + ", userName=" + userName + ", carname="
				+ carname + ", day=" + day + ", mobile=" + mobile + ", model=" + model + ", registration="
				+ registration + ", address=" + address + ", mode=" + mode + ", time=" + time + ", mailid=" + mailid
				+ ", status=" + status + "]";
	}

	public Bid(Long bid, Long userId, Long cid, String userName, String carname, String day, String mobile,
			String model, String registration, String address, String mode, String time, String mailid, String status) {
		super();
		this.bid = bid;
		this.userId = userId;
		this.cid = cid;
		this.userName = userName;
		this.carname = carname;
		this.day = day;
		this.mobile = mobile;
		this.model = model;
		this.registration = registration;
		this.address = address;
		this.mode = mode;
		this.time = time;
		this.mailid = mailid;
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

}
