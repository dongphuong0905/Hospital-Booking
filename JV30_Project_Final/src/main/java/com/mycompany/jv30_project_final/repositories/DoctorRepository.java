/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.repositories;

import com.mycompany.jv30_project_final.entities.DoctorEntity;
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
public interface DoctorRepository extends CrudRepository<DoctorEntity, Integer>{

    @Query(value = "SELECT doctor.id,doctor.doctor_name,doctor.user_id,doctor.special_id from doctor inner join calendar on"+
            " doctor.id = calendar.doctor_id where calendar.appointment_date = ?1"+
            " and doctor.special_id= ?2", nativeQuery = true)
    public List<DoctorEntity> findDoctorBySpecialId (String date, int specId);
   
}
