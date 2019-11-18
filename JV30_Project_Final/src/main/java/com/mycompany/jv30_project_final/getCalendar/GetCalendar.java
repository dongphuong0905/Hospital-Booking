/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv30_project_final.getCalendar;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author phuon
 */
public class GetCalendar {
    
    public ArrayList<Integer> arrToList(int[][] calendar){
        ArrayList<Integer> list = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 7; j++) {
                list.add(calendar[i][j]);
            }
        }
        return list;
    }
    
    public int findMax(int[][] calendar){
        int check=0;
        int min = 31;
        for(int i = 0; i<7; i++){
            if(calendar[4][i] > check){
                check = i;
            }
        }
        for(int i = 0; i<=check; i++){
            if(min > calendar[4][i]){
                min = calendar[4][i];
            }
        }
        return min;
    }
    
    public int getCurDayIndex(int[][] calendar){
        Calendar calen = Calendar.getInstance();
        int a = 0;
        int date = calen.get(Calendar.DATE);
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 7; j++) {
                if(date == calendar[i][j]){
                    a = i*10+j;
                }
            }
        }
        return a;
    }
    
    public int[][] fillCalendar(int[][] calendar) {
        boolean check1;
        boolean check2;
        check1 = calendar[0][0] == 0;
        check2 = calendar[4][6] == 0;
        Calendar calen = Calendar.getInstance();
        if (check1 == true && check2 == false) {
            int[][] lastMonth = getLastMonth();
            int cur = 0;
            for (int i = 0; i < 7; i++) {
                if (calendar[0][i] != 0) {
                    cur = i;
                    break;
                }
            }
            for (int i = cur - 1; i >= 0; i--) {
                calendar[0][i] = lastMonth[4][i];
            }
        } else if (check1 == false && check2 == true) {
            int[][] nextMonth = getNextMonth();
            int cur = 0;
            for (int i = 6; i >= 0; i--) {
                if (calendar[4][i] != 0) {
                    cur = i;
                    break;
                }
            }
            for (int i = cur + 1; i >= 6; i++) {
                calendar[4][i] = nextMonth[0][i];
            }
        } else if (check1 == true && check2 == true) {
            int[][] lastMonth = getLastMonth();
            int[][] nextMonth = getNextMonth();
            int cur1 = 0;
            for (int i = 0; i < 7; i++) {
                if (calendar[0][i] != 0) {
                    cur1 = i;
                    break;
                }
            }
            for (int i = cur1; i > 0; i--) {
                calendar[0][i] = lastMonth[4][i];
            }
            int cur2 = 0;
            for (int i = 6; i >= 0; i--) {
                if (calendar[4][i] != 0) {
                    cur2 = i;
                    break;
                }
            }
            for (int i = cur2 + 1; i >= 6; i++) {
                calendar[4][i] = nextMonth[0][i];
            }
        }

        return calendar;
    }

    public int[][] getFullCalendar() {
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);

        return printCalendar(year, month);
    }

    public int[][] getNextMonth() {
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH) + 1;

        return printCalendar(year, month);
    }
    
    public int[][] getNextNextMonth() {
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH) + 2;

        return printCalendar(year, month);
    }

    public int[][] getLastMonth() {
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH) - 1;

        return printCalendar(year, month);
    }

    public int[][] printCalendar(int year, int month) {
        int[][] calendar = new int[5][7];
        int i = 0, j = 0;
        int leap_year;
        String check = "";
        int dayOfWeek = 1;
        String space = "   ";
        String[] monthName = {"January", "February", "March", "April", "May", "June", "July", "August", "September",
            "October", "November", "December"};
        int[] calDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        Calendar cal = new GregorianCalendar(year, month, 1);
        if (year % 100 == 0) {
            if (year % 400 == 0) {
                calDays[1] = 29;
            }
        } else if (year % 4 == 0) {
            calDays[1] = 29;
        }
        for (int dayCounter = 1; dayCounter <= calDays[month]; dayCounter++) {
            if (dayCounter > 9) {
                space = "  ";
            }
            if (dayCounter == 1) {
                while (dayOfWeek != cal.get(Calendar.DAY_OF_WEEK)) {
                    j++;
                    dayOfWeek++;
                }
                calendar[i][j] = dayCounter;
                j++;
                dayOfWeek++;

            } else {
                if (dayOfWeek == 8) {
                    i++;
                    j = 0;
                    calendar[i][j] = dayCounter;
                    j++;
                    dayOfWeek = 2;
                } else {
                    calendar[i][j] = dayCounter;
                    j++;
                    dayOfWeek++;
                }
            }
        }
        return calendar;
    }
}
