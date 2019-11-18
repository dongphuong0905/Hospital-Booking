/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author phuon
 */
@Entity
@Table(name = "special_list")
public class SpecialListEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @OneToMany(mappedBy = "specialList",
            fetch = FetchType.LAZY, 
            cascade = CascadeType.REMOVE)
    private List<DoctorEntity> doctors;
    
    @Column(name = "special_name", nullable = false, length = 50)
    private String nameOfSpecial;
    
    private double price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<DoctorEntity> getDoctors() {
        return doctors;
    }

    public void setDoctors(List<DoctorEntity> doctors) {
        this.doctors = doctors;
    }

    public String getNameOfSpecial() {
        return nameOfSpecial;
    }

    public void setNameOfSpecial(String nameOfSpecial) {
        this.nameOfSpecial = nameOfSpecial;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public SpecialListEntity() {
    }
}
