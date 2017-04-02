/*
 * Custom script of website landing page at www.rosten.net version 1.
 * Steve-Roger Rosten
 * April, 2016
 */

// underlining of navigational elements
$(function() {
  // store window element in variable
  var $window = $(window);
  
  // fades inn feature visualization on page load
  $('#feature_visualization').hide().fadeIn(2500);
  
  // adds element to .current for visual effect 
  $('#home').addClass('current');

  // when clicking element of selected set remove or add class attr.
  $('nav a').on('click', function(e) {
    $('li a').removeClass();
    $(this).addClass('current');
  });
  
  // get position of vertical scroll bar
  $window.on('scroll', function() {
  
    // when vertical scroll bar < or > n change class attr. of selected set
    if($window.scrollTop() < 150) {
      $('li a').removeClass();
      $('#home').addClass('current');
    }
  
    if($window.scrollTop() > 500) {
      $('li a').removeClass();
      $('#about').addClass('current');
    }
    
    if($window.scrollTop() > 900) {
      $('li a').removeClass();
      $('#contact').addClass('current');
    }
  });
  
});
