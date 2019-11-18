/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.DoctorEntity;
import com.mycompany.jv30_project_final.repositories.DoctorRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class DoctorService {
    
    @Autowired
    private DoctorRepository dr;

    public List<DoctorEntity> findAllDoctor(String date, int specId){
        return (List<DoctorEntity>) dr.findDoctorBySpecialId(date, specId);
    }
    
    public DoctorEntity findDoctor(int id){
        return dr.findOne(id);
    }
}
