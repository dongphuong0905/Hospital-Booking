/* eslint-env browser */
(function ($) {
  'use strict'

  $(document).ready(function () {
    if($('form .form-group input.birthday').height() != undefined)
      $('form .form-group input.birthday').datepicker();

    $('.btn.btn-default').on('click', function() {
      var $getClassPanel = $(this).data('id');
      console.log($getClassPanel);
      ($(this).parent().find('.btn.btn-default').hasClass('active')) ? $(this).parent().find('.btn.btn-default').removeClass('active') : '';
      $(this).addClass('active');
      ($('.tab-content .tab-pane').hasClass('active')) ? $('.tab-content .tab-pane.active').removeClass('show active') : '';
      $(this).parents('.group').find('.tab-content .tab-pane.'+$getClassPanel).addClass('show active');
    })

    $('.group .group-results').on('click', function() {
      ($(this).parents('.group').find('.group-results').hasClass('active')) ? $(this).parents('.group').find('.group-results').removeClass('active') : '';
      $(this).addClass('active');
    })

    $('.group.group-files-filter a.gff-name').on('click', function() {
      $(this).parent().find('.dropdown-menu').toggleClass('show')
    })
  })
})(jQuery)
