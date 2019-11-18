/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.entities;

/**
 *
 * @author phuon
 */
public class AddPatient {
    private PatientDetailEntity patientDetailEntity;
    private RelativeEntity relativeEntity;

    public PatientDetailEntity getPatientDetailEntity() {
        return patientDetailEntity;
    }

    public void setPatientDetailEntity(PatientDetailEntity patientDetailEntity) {
        this.patientDetailEntity = patientDetailEntity;
    }

    public RelativeEntity getRelativeEntity() {
        return relativeEntity;
    }

    public void setRelativeEntity(RelativeEntity relativeEntity) {
        this.relativeEntity = relativeEntity;
    }

    public AddPatient() {
    }
    
    
}
