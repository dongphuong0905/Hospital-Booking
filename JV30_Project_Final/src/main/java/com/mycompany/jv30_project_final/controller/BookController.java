/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.controller;

import com.mycompany.jv30_project_final.entities.PatientDetailEntity;
import com.mycompany.jv30_project_final.entities.RelativeEntity;
import com.mycompany.jv30_project_final.service.AccountService;
import com.mycompany.jv30_project_final.service.PatientDetailService;
import com.mycompany.jv30_project_final.service.RelativeService;
import com.mysql.cj.protocol.ReadAheadInputStream;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author phuon
 */
@Controller
public class BookController {

    @Autowired
    private PatientDetailService patientDetailService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private RelativeService relativeService;

    @RequestMapping(value = {"/choose-info"})
    public String choosePatient(Model model,
            HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "login";
        } else {

            return "choose-patient";
        }
    }

    @RequestMapping("/choose/{patientId}")
    public String chooseThisPatient(Model model,
            @PathVariable("patientId") int patientId,
            @RequestParam(value = "status", required = false) String status,
            @RequestParam(value = "message", required = false) String message,
            HttpSession session) {
        model.addAttribute("message", message);
        model.addAttribute("status", status);
        session.setAttribute("patientId", patientDetailService.findPatientById(patientId));
        return "choose-date";
    }

    @RequestMapping(value = "update-form/{patientId}")
    public String viewFormUpdate(Model model,
            @PathVariable("patientId") int patientId) {
        model.addAttribute("patient", patientDetailService.findPatientById(patientId));
        model.addAttribute("relative", relativeService.findRelaById(patientId));
        model.addAttribute("action", "update-patient");
        return "book-form";
    }

    @RequestMapping(value = "/update/{id}",
            method = RequestMethod.POST)
    public String updatePatient(Model model,
            @ModelAttribute("book") PatientDetailEntity patient,
            @PathVariable("id") int patientId) {
        PatientDetailEntity patientDetailEntity = patientDetailService.savePatient(patient);
        if (patientDetailEntity.getId() > 0) {
            return "redirect:/choose-patient?message=update patient is successful"
                    + "&status=success";
        } else {
            return "redirect:/choose-patient?message=update patient is fail"
                    + "&status=fail";
        }
    }

    @RequestMapping(value = {"/add-information/{userId}"},
            method = RequestMethod.POST)
    public String addInformation(Model model,
            @PathVariable("userId") int userId,
            @ModelAttribute("patient") PatientDetailEntity patientDetail,
            @ModelAttribute("relative") RelativeEntity relative,
            @RequestParam(value = "message", required = false) String message) {
        patientDetail = patientDetailService.savePatient(patientDetail);
        relative = relativeService.saveRelative(relative);
        if (patientDetail.getId() > 0 && relative.getId() > 0) {
            return "redirect:/patient";
        } else {
            return "redirect:/add-information?message=Add information fail" + "&status=fail";
        }
    }

    @RequestMapping(value = {"/add/{userId}"})
    public String addPage(Model model,
            @PathVariable("userId") int userId) {
        model.addAttribute("patient", new PatientDetailEntity());
        model.addAttribute("relative", new RelativeEntity());
        return "redirect:/add-form?userId=" + userId;
    }

}
