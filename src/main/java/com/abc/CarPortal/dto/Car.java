package com.abc.CarPortal.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;


@Entity
public class Car {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long cid;
    private String userName;
    private String carname;
    private String mobile;
	private String model;
	private String registration;
	private String state;
	private String country;
	private String price;
	private String image;
	private String color;
	private String status;
	private String userNew;
	private String PhotoImagePath;
	
	public String getPhotoImagePath() {
		return PhotoImagePath;
	}

	public void setPhotoImagePath(String photoImagePath) {
		PhotoImagePath = photoImagePath;
	}

	public Car() {
		
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
	public String getImage() {
		return image;
	}
	public void setImage(String filename) {
		this.image = filename;
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
		return "Car [cid=" + cid + ", userName=" + userName + ", carname=" + carname + ", mobile=" + mobile + ", model="
				+ model + ", registration=" + registration + ", state=" + state + ", country=" + country + ", price="
				+ price + ", image=" + image + ", color=" + color + ", status=" + status + ", userNew=" + userNew
				+ ", PhotoImagePath=" + PhotoImagePath + "]";
	}

	public Car(Long cid, String userName, String carname, String mobile, String model, String registration,
			String state, String country, String price, String image, String color, String status, String userNew,
			String photoImagePath) {
		super();
		this.cid = cid;
		this.userName = userName;
		this.carname = carname;
		this.mobile = mobile;
		this.model = model;
		this.registration = registration;
		this.state = state;
		this.country = country;
		this.price = price;
		this.image = image;
		this.color = color;
		this.status = status;
		this.userNew = userNew;
		PhotoImagePath = photoImagePath;
	}

	

}
