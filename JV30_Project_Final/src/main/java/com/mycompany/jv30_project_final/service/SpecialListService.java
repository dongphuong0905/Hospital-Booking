/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.SpecialListEntity;
import com.mycompany.jv30_project_final.repositories.SpecialListRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class SpecialListService {
    
    @Autowired
    private SpecialListRepository specialListRepository;
    
    public List<SpecialListEntity> getSpecialList(){
        return (List<SpecialListEntity>) specialListRepository.findAll();
    }
    
    public SpecialListEntity findSpecialList(int id){
        return  specialListRepository.findOne(id);
    }
}
