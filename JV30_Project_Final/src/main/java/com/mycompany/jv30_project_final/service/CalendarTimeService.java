/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.CalendarTimeEntity;
import com.mycompany.jv30_project_final.repositories.CalendarTimeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class CalendarTimeService {

    @Autowired
    private CalendarTimeRepository calendarTimeRepository;

    public CalendarTimeEntity saveCalendarTime(CalendarTimeEntity booking) {
        return calendarTimeRepository.save(booking);
    }

    public List<CalendarTimeEntity> getCalendarTimes() {
        return (List<CalendarTimeEntity>) calendarTimeRepository.findAll();
    }

    public CalendarTimeEntity findCalendarTimesById(int calendarTimeId) {
        return calendarTimeRepository.findOne(calendarTimeId);
    }
    
    public List<CalendarTimeEntity> getAll(int calendarId){
        return calendarTimeRepository.getAllCalendarTime(calendarId);
    }
    
    public CalendarTimeEntity getParticipant(int calendarId){
        return calendarTimeRepository.getParticipant(calendarId);
    }

}
