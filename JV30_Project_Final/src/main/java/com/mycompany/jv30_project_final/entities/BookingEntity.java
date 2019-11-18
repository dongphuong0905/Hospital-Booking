/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author phuon
 */
@Entity
@Table(name = "booking")
public class BookingEntity implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "patient_id")
    private PatientDetailEntity patientDetailBooking;
    
    @Column(name = "appointment_date",nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date appointmentDate;
    
    @Column(name = "price")
    private double price;
    
    @Column(name = "status")
    private boolean status;
    
    @OneToMany(mappedBy = "booking",
            fetch = FetchType.LAZY,
            cascade = CascadeType.REMOVE)
    private List<BookingDetailEntity> bookingDetails;

    public BookingEntity() {
    }
    
    public BookingEntity(Date appointmentDate, double price, boolean status, PatientDetailEntity patientDetailBooking) {
        this.appointmentDate = appointmentDate;
        this.price = price;
        this.status = status;
        this.patientDetailBooking = patientDetailBooking;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public PatientDetailEntity getPatientDetailBooking() {
        return patientDetailBooking;
    }

    public void setPatientDetailBooking(PatientDetailEntity patientDetailBooking) {
        this.patientDetailBooking = patientDetailBooking;
    }

    public Date getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(Date appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public List<BookingDetailEntity> getBookingDetails() {
        return bookingDetails;
    }

    public void setBookingDetails(List<BookingDetailEntity> bookingDetails) {
        this.bookingDetails = bookingDetails;
    }
    
    
    
}
