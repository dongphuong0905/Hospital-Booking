/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.PatientDetailEntity;
import com.mycompany.jv30_project_final.entities.RelativeEntity;
import com.mycompany.jv30_project_final.repositories.PatientRepository;
import com.mycompany.jv30_project_final.repositories.RelativeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class RelativeService {

    @Autowired
    private RelativeRepository relativeRepository;

    @Autowired
    private PatientRepository patientRepository;

    public RelativeEntity saveRelative(RelativeEntity rela) {
        PatientDetailEntity patientDetail = patientRepository.save(rela.getPatientDetail());
        rela.setPatientDetail(patientDetail);
        return relativeRepository.save(rela);

    }

    public RelativeEntity findRelaById(int relaId) {
        return relativeRepository.findOne(relaId);
    }
    
    public RelativeEntity findRelativeByPatientId(int patientId){
        return relativeRepository.findRelativeByPatientId(patientId);
    }
}
