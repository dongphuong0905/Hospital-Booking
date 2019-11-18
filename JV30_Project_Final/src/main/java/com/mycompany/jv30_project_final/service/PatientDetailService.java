/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.PatientDetailEntity;
import com.mycompany.jv30_project_final.repositories.PatientRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class PatientDetailService {

    @Autowired
    private PatientRepository patientDetailRepository;

    public PatientDetailEntity savePatient(PatientDetailEntity patient) {
        return patientDetailRepository.save(patient);
    }

    public List<PatientDetailEntity> getPatients() {
        return (List<PatientDetailEntity>) patientDetailRepository.findAll();
    }

    public PatientDetailEntity findPatientById(int patientId) {
        return patientDetailRepository.findOne(patientId);
    }

    public List<PatientDetailEntity> findAllPatientById(int patientId) {
        List<PatientDetailEntity> listAll = new ArrayList<>();
        List<PatientDetailEntity> list = new ArrayList<>();
        listAll = (List<PatientDetailEntity>) patientDetailRepository.findAll();
        for (PatientDetailEntity p : listAll) {
            if (p.getAccount().getId() == patientId) {
                list.add(p);
            }
        }
        return list;
    }

    public boolean deletePatient(int patientId) {
        patientDetailRepository.delete(patientId);
        return patientDetailRepository.exists(patientId);
    }
}
