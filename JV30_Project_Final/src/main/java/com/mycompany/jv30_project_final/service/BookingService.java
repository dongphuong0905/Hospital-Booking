/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.service;

import com.mycompany.jv30_project_final.entities.BookingDetailEntity;
import com.mycompany.jv30_project_final.entities.BookingEntity;
import com.mycompany.jv30_project_final.entities.CalendarEntity;
import com.mycompany.jv30_project_final.entities.CalendarTimeEntity;
import com.mycompany.jv30_project_final.entities.PatientDetailEntity;
import com.mycompany.jv30_project_final.repositories.BookingDetailRepository;
import com.mycompany.jv30_project_final.repositories.BookingRepository;
import com.mycompany.jv30_project_final.repositories.CalendarTimeRepository;
import java.util.Date;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author phuon
 */
@Service
public class BookingService {
    @Autowired
    private BookingRepository bookingRepository;
    @Autowired
    private BookingDetailRepository detailRepository;
    @Autowired
    private CalendarTimeRepository calendarTimeRepository;
    
    public BookingEntity saveBooking(BookingEntity booking) {
        return bookingRepository.save(booking);
    }
    
    public List<BookingEntity> getBookingDetails() {
        return (List<BookingEntity>) bookingRepository.findAll();
    }
    
    public BookingEntity findBookingById(int bookId) {
        return bookingRepository.findOne(bookId);
    }
    
    
    @Transactional
    public BookingEntity saveBooking(Date date, double price, boolean status
            ,PatientDetailEntity patient, CalendarEntity calendar, String time, String payMethod, int calendarTimeId){
        BookingEntity booking = new BookingEntity(date, price, status, patient);
        BookingDetailEntity bookingDetail = new BookingDetailEntity(calendar,time,"----","-----",payMethod);
        
        booking = bookingRepository.save(booking);
        bookingDetail.setBooking(booking);
        detailRepository.save(bookingDetail);
        CalendarTimeEntity ct = calendarTimeRepository.getParticipant(calendarTimeId);
        int numb = ct.getParticipant() + 1;
        ct.setParticipant(numb);
        calendarTimeRepository.save(ct);
        return booking;
    }
}
