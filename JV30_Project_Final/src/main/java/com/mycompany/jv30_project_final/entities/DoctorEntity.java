/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author phuon
 */
@Entity
@Table(name = "doctor")
public class DoctorEntity implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "doctor_name")
    private String doctorName;
    
    @ManyToOne()
    @JoinColumn(name = "special_id")
    private SpecialListEntity specialList;
    
    @OneToMany(mappedBy = "doctor",
            fetch = FetchType.LAZY, 
            cascade = CascadeType.REMOVE)
    private List<CalendarEntity> calendar;
    
    @OneToOne
    @JoinColumn(name="user_id")
    private AccountEntity account;
    
    public AccountEntity getAccount() {
        return account;
    }

    public void setAccount(AccountEntity account) {
        this.account = account;
    }
    
    public DoctorEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public SpecialListEntity getSpecialList() {
        return specialList;
    }

    public void setSpecialList(SpecialListEntity specialList) {
        this.specialList = specialList;
    }

    public List<CalendarEntity> getCalendar() {
        return calendar;
    }

    public void setCalendar(List<CalendarEntity> calendar) {
        this.calendar = calendar;
    }
    
}
