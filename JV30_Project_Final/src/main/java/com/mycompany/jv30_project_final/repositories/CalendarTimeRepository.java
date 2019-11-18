/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.repositories;

import com.mycompany.jv30_project_final.entities.CalendarTimeEntity;
import java.io.Serializable;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author phuon
 */
@Repository
public interface CalendarTimeRepository extends CrudRepository<CalendarTimeEntity, Integer>{
    
    @Query(value = "Select * from calendar_time where calendar_id=?1", nativeQuery = true)
    public List<CalendarTimeEntity> getAllCalendarTime(int calendarId);
    
    @Query(value = "Select * from calendar_time where ctId=?1",nativeQuery = true)
    public CalendarTimeEntity getParticipant(int id);
    
}
