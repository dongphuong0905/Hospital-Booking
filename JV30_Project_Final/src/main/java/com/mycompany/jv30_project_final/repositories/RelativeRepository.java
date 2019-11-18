/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.repositories;

import com.mycompany.jv30_project_final.entities.RelativeEntity;
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
public interface RelativeRepository extends CrudRepository<RelativeEntity, Integer>{
    
    @Query(value = "Select * From relative "
            + "Where patient_id = ?1", nativeQuery = true)
    public RelativeEntity findRelativeByPatientId(int patientId);
}
