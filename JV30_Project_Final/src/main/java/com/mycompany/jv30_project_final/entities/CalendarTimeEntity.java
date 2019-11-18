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
@Table(name = "calendar_time")
public class CalendarTimeEntity implements Serializable{
    
    @Id
    @Column(name = "ctId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ctId;
    
    @ManyToOne
    @JoinColumn(name = "calendar_id")
    private CalendarEntity calendarTime;
    
    private String time;
    
    private int participant;

    public CalendarTimeEntity() {
    }

    public int getId() {
        return ctId;
    }

    public void setId(int id) {
        this.ctId = id;
    }

    public CalendarEntity getCalendarTime() {
        return calendarTime;
    }

    public void setCalendarTime(CalendarEntity calendarTime) {
        this.calendarTime = calendarTime;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getParticipant() {
        return participant;
    }

    public void setParticipant(int participant) {
        this.participant = participant;
    }
}
