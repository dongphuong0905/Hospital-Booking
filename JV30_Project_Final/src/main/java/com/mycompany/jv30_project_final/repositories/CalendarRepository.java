/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.repositories;

import com.mycompany.jv30_project_final.entities.CalendarEntity;
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
public interface CalendarRepository extends CrudRepository<CalendarEntity, Integer>{
    @Query(value = "SELECT calendar.id, calendar.appointment_date, calendar.room, calendar.doctor_id from calendar inner join doctor on"+
            " doctor.id = calendar.doctor_id where calendar.appointment_date = ?1"+
            " and doctor.special_id= ?2", nativeQuery = true)
    public List<CalendarEntity> findCalendarBySpecialId (String date, int specId);
}
