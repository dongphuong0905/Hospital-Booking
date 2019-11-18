/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.BookingDetailEntity;
import com.mycompany.jv30_project_final.entities.CalendarTimeEntity;
import com.mycompany.jv30_project_final.repositories.BookingDetailRepository;
import com.mycompany.jv30_project_final.repositories.CalendarTimeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author phuon
 */
@Service
public class BookingDetailService {
    @Autowired
    private BookingDetailRepository bookingDetailRepository;
    @Autowired 
    private CalendarTimeRepository calendarTimeRepository;
    
    public BookingDetailEntity saveBookingDetail(BookingDetailEntity bookingDetail) {
        return bookingDetailRepository.save(bookingDetail);
    }
    
    public List<BookingDetailEntity> getBookingDetails() {
        return (List<BookingDetailEntity>) bookingDetailRepository.findAll();
    }
    
    public BookingDetailEntity findBookingDetailById(int bookDetailId) {
        return bookingDetailRepository.findOne(bookDetailId);
    }
    
    public BookingDetailEntity findBookingDetailByBookingId(int bookingId){
        return bookingDetailRepository.findBookingDetailByBookingId(bookingId);
    }
    @Transactional
    public boolean delete(int id, int calendarId){
        bookingDetailRepository.delete(id);
        CalendarTimeEntity ct = calendarTimeRepository.getParticipant(calendarId);
        int number = ct.getParticipant() - 1;
        ct.setParticipant(number);
        calendarTimeRepository.save(ct);
        return bookingDetailRepository.exists(id);
    }
}
