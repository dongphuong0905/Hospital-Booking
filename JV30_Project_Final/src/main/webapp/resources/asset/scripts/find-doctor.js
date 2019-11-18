/* eslint-env browser */
(function ($) {
  'use strict'

  $(document).ready(function () {
    // console.log($.cookie());
    // $('.show-bs').text($.cookie('15')+'/ Phòng khám 04');
    // $.cookie('17', 'Phòng khám 04');

    // $('#section-find-doctor-2 .booking-right-calendar table tr td button').on('click', function() {
    //   $.cookie('ngay3', $(this).text());
    //   $(this).addClass('active');
    //   $(this).parent().addClass('active');
    //   $(this).parents('tr.btn-booking-tr').siblings().addClass('hidden');
    //   $('.brc-scroll-group').addClass('show');
    // })

    // $('.brc-scroll-group ul li a').on('click', function() {
    //   $.cookie('16', $(this).text());
    //   $('.brc-btn').addClass('show');
    //   $('.brc-btn-show-btn span').text($('.show-bs').text()+' - '+$(this).text());
    // })

    // $('.brc-scroll-group .brc-scroll-group-btn .btn.btn-info').on('click', function() {
    //   $(this).parents('.brc-scroll-group').removeClass('show');
    //   ($('.booking-right-calendar table.table td').hasClass('active')) ? $('.booking-right-calendar table.table td').removeClass('active') : '';
    //   ($('.booking-right-calendar table.table td button').hasClass('active')) ? $('.booking-right-calendar table.table td button').removeClass('active') : '';
    //   ($('.booking-right-calendar table.table tr.btn-booking-tr').hasClass('hidden')) ? $('.booking-right-calendar table.table tr.btn-booking-tr').removeClass('hidden') : '';
    //   $('.brc-take-off').addClass('show');
    //   ($('.brc-btn').hasClass('show')) ? $('.brc-btn').removeClass('show') : '';
    // })

    // $('.booking-right-calendar table.calTable tr td button').on('click', function(){
    //   if(!$(this).hasClass('btn-booking-calendar-disable')){
    //     if($(this).parents('tbody').find('td').hasClass('active')){
    //       $(this).parents('tbody').find('td').removeClass('active')
    //       $(this).parents('tbody').find('td button').removeClass('active')
    //       if($(this).parents('tbody').find('tr').hasClass('show')){
    //         $(this).parents('tbody').find('tr.show').removeClass('show')
    //         $(this).parents('tbody').find('tr').find('.brc-scroll-group.show').removeClass('show')
    //       }
    //     }
    //     $(this).toggleClass('active')
    //     $(this).parent().toggleClass('active')
    //     $(this).parents('tr').next().addClass('show')
    //     $(this).parents('tr').next().find('.brc-scroll-group').addClass('show')
    //   }
    // })
  })
})(jQuery)
