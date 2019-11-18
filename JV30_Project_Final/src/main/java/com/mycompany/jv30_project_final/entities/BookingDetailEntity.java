/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author phuon
 */
@Entity
@Table(name = "booking_detail")
public class BookingDetailEntity implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public BookingEntity getBooking() {
        return booking;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPayMethod() {
        return payMethod;
    }

    public void setPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    public void setBooking(BookingEntity booking) {
        this.booking = booking;
    }

    public CalendarEntity getCalendar() {
        return calendar;
    }

    public void setCalendar(CalendarEntity calendar) {
        this.calendar = calendar;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public BookingDetailEntity() {
    }
    
    @ManyToOne
    @JoinColumn(name = "booking_id")
    private BookingEntity booking;
    
    @ManyToOne
    @JoinColumn(name = "calendar_id")
    private CalendarEntity calendar;
    
    @Column(nullable = false, length = 1000)
    private String result;
    
    @Column(nullable = false, length = 1000)
    private String prescription;
    @Column(length = 15)
    private String time;
    
    @Column(length = 15) 
    private String payMethod;
    
    public BookingDetailEntity(CalendarEntity calendar,String time, String result, String prescription, String payMethod) {
        this.booking = booking;
        this.calendar = calendar;
        this.result = result;
        this.prescription = prescription;
        this.time = time;
        this.payMethod = payMethod;
    }
    
    
    
}
