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
@Table(name = "patient_detail")
public class PatientDetailEntity implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "userId")
    private AccountEntity account;
    
    @Column(nullable = false, length = 50)
    private String patientName;
    
    @Column(name = "birthday",nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date birthday;
    
    @Column(name = "card_id",nullable = false, length = 12)
    private int patientCardId;
    
    @Column(name = "address", nullable = false, length = 255)
    private String patientAddress;
    
    @Column(name = "phone_number",nullable = false, length = 20)
    private String patientPhoneNumber;
    
    @Column(nullable = false, length = 50)
    private String email;
    
    @Column(nullable = false, length = 3)
    private String patientGender;
    
    @OneToMany(mappedBy = "patientDetail",
            fetch = FetchType.LAZY,
            cascade = CascadeType.REMOVE)
    private List<RelativeEntity> relatives;
    
    @OneToMany(mappedBy = "patientDetailBooking",
            fetch = FetchType.LAZY,
            cascade = CascadeType.REMOVE)
    private List<BookingEntity> booking;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public AccountEntity getAccount() {
        return account;
    }

    public void setAccount(AccountEntity account) {
        this.account = account;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getPatientCardId() {
        return patientCardId;
    }

    public void setPatientCardId(int patientCardId) {
        this.patientCardId = patientCardId;
    }

    public String getPatientAddress() {
        return patientAddress;
    }

    public void setPatientAddress(String patientAddress) {
        this.patientAddress = patientAddress;
    }

    public String getPatientPhoneNumber() {
        return patientPhoneNumber;
    }

    public void setPatientPhoneNumber(String patientPhoneNumber) {
        this.patientPhoneNumber = patientPhoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPatientGender() {
        return patientGender;
    }

    public void setPatientGender(String patientGender) {
        this.patientGender = patientGender;
    }

    public List<RelativeEntity> getRelatives() {
        return relatives;
    }

    public void setRelatives(List<RelativeEntity> relatives) {
        this.relatives = relatives;
    }

    public List<BookingEntity> getBooking() {
        return booking;
    }

    public void setBooking(List<BookingEntity> booking) {
        this.booking = booking;
    }

    public PatientDetailEntity() {
    }
}
