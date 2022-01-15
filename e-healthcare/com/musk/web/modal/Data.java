package com.musk.web.modal;

public class Data {
     private String Adhaar_No;
     private String paswrd;
     private String bloodgrp;
     private String disease;
     private String vaccinate;
     private String gender;
     private String frst_name;
     private String last_name;
     private String birthdate;
     private String email;
	public String getAdhaar_No() {
		return Adhaar_No;
	}
	public void setAdhaar_No(String adhaar_No) {
		Adhaar_No = adhaar_No;
	}
	public String getPaswrd() {
		return paswrd;
	}
	public void setPaswrd(String paswrd) {
		this.paswrd = paswrd;
	}
	public String getBloodgrp() {
		return bloodgrp;
	}
	public void setBloodgrp(String bloodgrp) {
		this.bloodgrp = bloodgrp;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getVaccinate() {
		return vaccinate;
	}
	public void setVaccinate(String vaccinate) {
		this.vaccinate = vaccinate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFrst_name() {
		return frst_name;
	}
	public void setFrst_name(String frst_name) {
		this.frst_name = frst_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Data [Adhaar_No=" + Adhaar_No + ", paswrd=" + paswrd + ", bloodgrp=" + bloodgrp + ", disease=" + disease
				+ ", vaccinate=" + vaccinate + ", gender=" + gender + ", frst_name=" + frst_name + ", last_name="
				+ last_name + ", birthdate=" + birthdate + ", email=" + email + "]";
	}
         
}
