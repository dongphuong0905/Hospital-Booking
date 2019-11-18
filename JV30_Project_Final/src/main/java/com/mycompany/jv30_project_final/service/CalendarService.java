/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.CalendarEntity;
import com.mycompany.jv30_project_final.repositories.CalendarRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class CalendarService {
    
    @Autowired
    private CalendarRepository calendarRepository;
    
    public CalendarEntity saveCalendar(CalendarEntity booking) {
        return calendarRepository.save(booking);
    }
    
    public List<CalendarEntity> getCalendar() {
        return (List<CalendarEntity>) calendarRepository.findAll();
    }
    
    public CalendarEntity findCalendarById(int calendarId) {
        return calendarRepository.findOne(calendarId);
    }
    
    public List<CalendarEntity> findCalendarBySpecialId(String date, int specId){
        return (List<CalendarEntity>) calendarRepository.findCalendarBySpecialId(date, specId);
    }
}
