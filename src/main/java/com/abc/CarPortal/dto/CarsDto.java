package com.abc.CarPortal.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "carsdto")
public class CarsDto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long cid;
	
	@Column(name = "designation")
	private String designation;
	
	@Column(name = "file_name")
	private String fileName;
	
	@Column(name = "file_path")
	private String filePath;
	
	@Column(name = "file_type")
	private String fileType;
	
	@Column(name = "file_size")
	private String fileSize;
	
	@Column(name = "created_date")
	private Timestamp createdDate;
	
    private String userName;
    private String carname;
    private String mobile;
	private String model;
	private String registration;
	private String state;
	private String country;
	private String price;
	private String color;
	private String status;
	private String userNew;
	public Long getCid() {
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getFileSize() {
		return fileSize;
	}
	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserNew() {
		return userNew;
	}
	public void setUserNew(String userNew) {
		this.userNew = userNew;
	}
	@Override
	public String toString() {
		return "CarsDto [cid=" + cid + ", designation=" + designation + ", fileName=" + fileName + ", filePath="
				+ filePath + ", fileType=" + fileType + ", fileSize=" + fileSize + ", createdDate=" + createdDate
				+ ", userName=" + userName + ", carname=" + carname + ", mobile=" + mobile + ", model=" + model
				+ ", registration=" + registration + ", state=" + state + ", country=" + country + ", price=" + price
				+ ", color=" + color + ", status=" + status + ", userNew=" + userNew + "]";
	}
	public CarsDto(Long cid, String designation, String fileName, String filePath, String fileType, String fileSize,
			Timestamp createdDate, String userName, String carname, String mobile, String model, String registration,
			String state, String country, String price, String color, String status, String userNew) {
		super();
		this.cid = cid;
		this.designation = designation;
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileType = fileType;
		this.fileSize = fileSize;
		this.createdDate = createdDate;
		this.userName = userName;
		this.carname = carname;
		this.mobile = mobile;
		this.model = model;
		this.registration = registration;
		this.state = state;
		this.country = country;
		this.price = price;
		this.color = color;
		this.status = status;
		this.userNew = userNew;
	}
	
	public CarsDto() {
		
		// TODO Auto-generated constructor stub
	}
	
	

}
