/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.controller;

import com.mycompany.jv30_project_final.entities.BookingCart;
import com.mycompany.jv30_project_final.entities.BookingDetailEntity;
import com.mycompany.jv30_project_final.entities.BookingEntity;
import com.mycompany.jv30_project_final.entities.CalendarEntity;
import com.mycompany.jv30_project_final.entities.CalendarTimeEntity;
import com.mycompany.jv30_project_final.entities.DoctorEntity;
import com.mycompany.jv30_project_final.entities.PatientDetailEntity;
import com.mycompany.jv30_project_final.entities.RelativeEntity;
import com.mycompany.jv30_project_final.entities.SpecialListEntity;
import com.mycompany.jv30_project_final.getCalendar.GetCalendar;
import com.mycompany.jv30_project_final.service.AccountService;
import com.mycompany.jv30_project_final.service.BookingDetailService;
import com.mycompany.jv30_project_final.service.BookingService;
import com.mycompany.jv30_project_final.service.CalendarService;
import com.mycompany.jv30_project_final.service.CalendarTimeService;
import com.mycompany.jv30_project_final.service.DoctorService;
import com.mycompany.jv30_project_final.service.PatientDetailService;
import com.mycompany.jv30_project_final.service.RelativeService;
import com.mycompany.jv30_project_final.service.SpecialListService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private RelativeService relativeService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private PatientDetailService patientDetailService;

    @Autowired
    private SpecialListService specialListService;

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private CalendarService calendarService;

    @Autowired
    private CalendarTimeService calendarTimeService;

    @Autowired
    private BookingService bookingService;

    @Autowired
    private BookingDetailService bookingDetailService;

    @RequestMapping("/")
    public String viewHome(Model model,
            HttpSession session) {
        BookingCart bookingCart = new BookingCart();
        session.setAttribute("bookingCart", bookingCart);
        return "index";
    }

    @RequestMapping("/choosePatient")
    public String viewPatient(Model model,
            @RequestParam(value = "message", required = false) String message,
            @RequestParam(value = "status", required = false) String status,
            HttpSession session) {
        model.addAttribute("message", message);
        model.addAttribute("status", status);
        return "choose-patient";
    }

    @RequestMapping(value = {"/choose-info/{userId}"})
    public String home(Model model,
            @PathVariable("userId") int userId,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        bookingCart.setUserId(userId);
        model.addAttribute("user", accountService.findAccountById(userId));
        model.addAttribute("userId", userId);
        model.addAttribute("patient", patientDetailService.findAllPatientById(userId));

        session.setAttribute("bookingCart", bookingCart);

        return "choose-patient";
    }

    @RequestMapping(value = {"/add/{userId}"})
    public String addPatient(Model model,
            @PathVariable("userId") int userId,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        bookingCart.setUserId(userId);
        model.addAttribute("patient", new PatientDetailEntity());
        model.addAttribute("relative", new RelativeEntity());
        model.addAttribute("userId", userId);
        model.addAttribute("action", "add-info");

        session.setAttribute("bookingCart", bookingCart);

        return "add-form";
    }

    @RequestMapping(value = {"/add-info"},
            method = RequestMethod.POST)
    public String addPatient(Model model,
            @ModelAttribute("relative") RelativeEntity rela,
            @RequestParam(value = "message", required = false) String message,
            @RequestParam(value = "status", required = false) String status) {
        rela = relativeService.saveRelative(rela);

        if (rela.getId() > 0) {
            int id = rela.getPatientDetail().getAccount().getId();
            model.addAttribute("user", accountService.findAccountById(id));
            model.addAttribute("userId", id);
            model.addAttribute("patient", patientDetailService.findAllPatientById(id));
            return "choose-patient";
        } else {
            model.addAttribute("message", message);
            model.addAttribute("status", status);
            return "redirect:/add-info?message=Add patient is fail"
                    + "&status=fail";
        }
    }

    @RequestMapping("/update/{patientId}")
    public String viewFormUpdate(Model model,
            @PathVariable("patientId") int patientId) {
        model.addAttribute("user", accountService.findAccountById(patientId));
        model.addAttribute("patient", patientDetailService.findPatientById(patientId));
        model.addAttribute("relative", relativeService.findRelativeByPatientId(patientId));
        model.addAttribute("action", "up-patient");
        return "add-form";
    }

    @RequestMapping(value = "up-patient",
            method = RequestMethod.POST)
    public String changPatient(Model model,
            @ModelAttribute("relavtive") RelativeEntity rela,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        rela = relativeService.saveRelative(rela);
        int id = bookingCart.getUserId();
        model.addAttribute("user", accountService.findAccountById(id));
        model.addAttribute("userId", id);
        model.addAttribute("patient", patientDetailService.findAllPatientById(id));
        
        return "choose-patient";
    }

    @RequestMapping("/delete/{patientId}/{userId}")
    public String deletePatient(Model model,
            @PathVariable("patientId") int patientId,
            @PathVariable("userId") int userId) {
        if (!patientDetailService.deletePatient(patientId)) {
            model.addAttribute("message", "Delete patient is successful");
            model.addAttribute("status", "success");
        } else {
            model.addAttribute("message", "Delete patient is fail");
            model.addAttribute("status", "fail");
        }
        model.addAttribute("user", accountService.findAccountById(userId));
        model.addAttribute("userId", userId);
        model.addAttribute("patient", patientDetailService.findAllPatientById(userId));
        return "choose-patient";
    }

    @RequestMapping("/choose/{patientId}")
    public String choosePatient(Model model,
            @PathVariable("patientId") int patientId,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");

        PatientDetailEntity patient = patientDetailService.findPatientById(patientId);

        bookingCart.setPatient(patient);

        GetCalendar c = new GetCalendar();
        int[][] calendar = c.getFullCalendar();
        int cur = c.getCurDayIndex(calendar);
        calendar = c.fillCalendar(calendar);
        int max = c.findMax(calendar);
        model.addAttribute("curi", cur / 10);
        model.addAttribute("curj", cur % 10);
        model.addAttribute("max", max);
        model.addAttribute("patient", bookingCart.getPatient());
        model.addAttribute("current", "yes");
        model.addAttribute("calendar", calendar);

        session.setAttribute("bookingCart", bookingCart);

        return "choose-date";
    }

    @RequestMapping("/nextMonth")
    public String nextMonth(Model model,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        PatientDetailEntity patient = bookingCart.getPatient();
        GetCalendar c = new GetCalendar();
        int[][] calendar = c.getNextMonth();
        int cur = c.getCurDayIndex(calendar);
        calendar = c.fillCalendar(calendar);
        int max = c.findMax(calendar);
        model.addAttribute("max", max);
        model.addAttribute("calendar", calendar);
        model.addAttribute("current", "no");
        model.addAttribute("patient", patient);

        return "choose-date";
    }

    @RequestMapping(value = "/chooseDate",
            method = RequestMethod.POST)
    public String chooseDate(Model model,
            @RequestParam("selectedDate") String dateBook,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");

        dateBook = "2019-08-" + dateBook;

        bookingCart.setBookingDate(dateBook);
        model.addAttribute("patient", bookingCart.getPatient());
        model.addAttribute("datee", dateBook);
        model.addAttribute("list", specialListService.getSpecialList());

        session.setAttribute("bookingCart", bookingCart);

        return "choose-special";
    }

    @RequestMapping(value = "/choose-list/{specId}")
    public String chooseSpec(Model model,
            @PathVariable("specId") int specId,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        String dateAp = bookingCart.getBookingDate();

        List<CalendarTimeEntity> timeList = new ArrayList<>();
        List<CalendarEntity> calendarList = calendarService.findCalendarBySpecialId(dateAp, specId);
        for (CalendarEntity c : calendarList) {
            List<CalendarTimeEntity> time = new ArrayList<>();
            time = calendarTimeService.getAll(c.getId());
            timeList.addAll(time);
        }
        model.addAttribute("dateAp", dateAp);
        model.addAttribute("specId", specId);

        bookingCart.setSpecial(specialListService.findSpecialList(specId));

        model.addAttribute("listDoctor", doctorService.findAllDoctor(dateAp, specId));
        model.addAttribute("calendar", calendarList);
        model.addAttribute("calendarTime", timeList);
        model.addAttribute("patient", bookingCart.getPatient());
        session.setAttribute("bookingCart", bookingCart);

        if (calendarList == null && timeList == null) {
            return "index";
        } else {
            return "choose-doctor";
        }
    }

    @RequestMapping(value = "/chooseDoctor",
            method = RequestMethod.POST)
    public String chooseDoctor(Model model,
            @RequestParam("selectedDoctor") String selectedDoctor,
            HttpSession session) {

        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");

        StringTokenizer str = new StringTokenizer(selectedDoctor, ",");
        String time = str.nextToken();
        int calendarId = Integer.parseInt(str.nextToken());
        int doctorId = Integer.parseInt(str.nextToken());
        int calenderTimeId = Integer.parseInt(str.nextToken());

        DoctorEntity doctor = doctorService.findDoctor(doctorId);
        CalendarEntity calen = calendarService.findCalendarById(calendarId);

        SpecialListEntity special = bookingCart.getSpecial();

        String date = bookingCart.getBookingDate();

        PatientDetailEntity patient = bookingCart.getPatient();
        bookingCart.setCalendarTimeId(calenderTimeId);
        bookingCart.setDoctor(doctor);
        bookingCart.setCalendar(calen);
        bookingCart.setBookingTime(time);

        model.addAttribute("time", time);
        model.addAttribute("doctor", doctor);
        model.addAttribute("calen", calen);
        model.addAttribute("date", date);
        model.addAttribute("special", special);
        model.addAttribute("patient", patient);
        model.addAttribute("sld", bookingCart.getCalendarTimeId());
        session.setAttribute("bookingCart", bookingCart);

        return "confirm";
    }

    @RequestMapping(value = "/confirm")
    public String pay(Model model,
            HttpSession session) {

        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        model.addAttribute("patient", bookingCart.getPatient());
        model.addAttribute("time", bookingCart.getBookingTime());
        model.addAttribute("doctor", bookingCart.getDoctor());
        model.addAttribute("calendar", bookingCart.getCalendar());
        model.addAttribute("special", bookingCart.getSpecial());
        model.addAttribute("date", bookingCart.getBookingDate());
        model.addAttribute("calendarTimeId", bookingCart.getCalendarTimeId());
        return "payment";
    }

    @RequestMapping(value = "/saveDatabase")
    public String save(Model model,
            @RequestParam("payMethod") String payMethod,
            HttpSession session) throws ParseException {

        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");

        DoctorEntity doctor = bookingCart.getDoctor();
        CalendarEntity calendar = bookingCart.getCalendar();
        String time = bookingCart.getBookingTime();
        String date = bookingCart.getBookingDate();
        Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(date);
        PatientDetailEntity patient = bookingCart.getPatient();
        SpecialListEntity special = bookingCart.getSpecial();
        BookingEntity booking = new BookingEntity();
        int calendarTimeId = bookingCart.getCalendarTimeId();
        if (payMethod.equals("1")) {
            bookingCart.setStatus(true);
            bookingCart.setPayMethod("chuyển khoản");
            booking = bookingService.saveBooking(date1, special.getPrice(), true, patient, calendar, time, "chuyển khoản", calendarTimeId);
        } else if (payMethod.equals("0")) {
            bookingCart.setStatus(false);
            bookingCart.setPayMethod("trực tiếp");
            booking = bookingService.saveBooking(date1, special.getPrice(), false, patient, calendar, time, "trực tiếp", calendarTimeId);
        }
        model.addAttribute("patient", bookingCart.getPatient());
        model.addAttribute("bookingId", booking.getId());
        return "endpage";
    }

    @RequestMapping("/searchh")
    public String search(Model model) {
        return "searchpage";
    }

    @RequestMapping(value = "/searchBooking", method = RequestMethod.POST)
    public String search(Model model,
            @RequestParam("bookingId") int bookingId,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        BookingDetailEntity bookingDetail = bookingDetailService.findBookingDetailByBookingId(bookingId);
        BookingEntity booking = bookingService.findBookingById(bookingId);
        if (booking != null && bookingDetail != null) {
            model.addAttribute("check", "yes");
            CalendarEntity calendar = bookingDetail.getCalendar();
            DoctorEntity doctor = calendar.getDoctor();
            PatientDetailEntity patient = booking.getPatientDetailBooking();
            model.addAttribute("patient", patient);
            model.addAttribute("doctor", doctor);
            model.addAttribute("booking", booking);
            model.addAttribute("bookingDetail", bookingDetail);
            model.addAttribute("special", specialListService.findSpecialList(doctor.getSpecialList().getId()));
            model.addAttribute("clt", bookingCart.getCalendarTimeId());

        } else {
            model.addAttribute("check", "no");
        }
        return "searchpage";
    }

    @RequestMapping("/cancelBooking/{bookingId}")
    public String viewPatient(Model model,
            @PathVariable("bookingId") int bookingId,
            HttpSession session) {
        BookingCart bookingCart = (BookingCart) session.getAttribute("bookingCart");
        bookingDetailService.delete(bookingId, bookingCart.getCalendarTimeId());
        return "searchpage";
    }
}

//session save: patient, date, time, doctor, special, calendar
