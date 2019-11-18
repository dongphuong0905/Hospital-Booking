/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.entities;

/**
 *
 * @author phuon
 */
public class BookingCart {
    private String bookingDate;
    private String bookingTime;
    private PatientDetailEntity patient;
    private CalendarEntity calendar;
    private DoctorEntity doctor;
    private SpecialListEntity special;
    private boolean status; 
    private String payMethod;
    private int userId;
    private int calendarTimeId;

    public int getCalendarTimeId() {
        return calendarTimeId;
    }

    public void setCalendarTimeId(int calendarTimeId) {
        this.calendarTimeId = calendarTimeId;
    }
    


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getPayMethod() {
        return payMethod;
    }

    public void setPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    public SpecialListEntity getSpecial() {
        return special;
    }

    public void setSpecial(SpecialListEntity special) {
        this.special = special;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getBookingTime() {
        return bookingTime;
    }

    public void setPatient(PatientDetailEntity patient) {
        this.patient = patient;
    }

    public void setBookingTime(String bookingTime) {
        this.bookingTime = bookingTime;
    }

    public PatientDetailEntity getPatient() {
        return patient;
    }

    public void setPrice(PatientDetailEntity patient) {
        this.patient = patient;
    }

    public CalendarEntity getCalendar() {
        return calendar;
    }

    public void setCalendar(CalendarEntity calendar) {
        this.calendar = calendar;
    }

    public DoctorEntity getDoctor() {
        return doctor;
    }

    public void setDoctor(DoctorEntity doctor) {
        this.doctor = doctor;
    }

    public BookingCart() {
    }
    
}
