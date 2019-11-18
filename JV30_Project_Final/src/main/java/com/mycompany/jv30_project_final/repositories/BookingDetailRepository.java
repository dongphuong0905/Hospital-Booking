/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.repositories;

/**
 *
 * @author phuon
 */
 

import com.mycompany.jv30_project_final.entities.BookingDetailEntity;
import java.io.Serializable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingDetailRepository extends CrudRepository<BookingDetailEntity, Integer>{
    
    @Query(value = "Select * from booking_detail where booking_id = ?1",nativeQuery = true)
    public BookingDetailEntity findBookingDetailByBookingId(int bookingId);
    
}
