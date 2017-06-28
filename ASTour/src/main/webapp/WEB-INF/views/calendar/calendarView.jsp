<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../include/bootstap_collect.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='http://arshaw.com/css/main.css?6' />
<link rel='stylesheet' type='text/css' href='http://arshaw.com/css/fullcalendar.css?3' />

<link rel='stylesheet' type='text/css' href='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.css' />
<script type='text/javascript' src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-1.10.2.min.js'></script>
<script type='text/javascript' src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-ui-1.10.3.custom.min.js'></script>
<script type='text/javascript' src='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.min.js'></script>
<script type='text/javascript'>
   $(document).ready(function() {

      var date = new Date();
      var d = date.getDate();
      var m = date.getMonth();
      var y = date.getFullYear();

      $('#calendar').fullCalendar({
         header : {
            left : 'prev,next today',
            center : 'title',
            right : 'month,agendaWeek,agendaDay'
         },
         editable : true,
         events : [ {
            title : 'All Day Event',
            start : new Date(y, m, 1)
         }, {
            title : 'Long Event',
            start : new Date(y, m, d - 5),
            end : new Date(y, m, d - 2)
         }, {
            id : 999,
            title : 'Repeating Event',
            start : new Date(y, m, d - 3, 16, 0),
            allDay : false
         }, {
            id : 999,
            title : 'Repeating Event',
            start : new Date(y, m, d + 4, 16, 0),
            allDay : false
         }, {
            title : 'Meeting',
            start : new Date(y, m, d, 10, 30),
            allDay : false
         }, {
            title : 'Lunch',
            start : new Date(y, m, d, 12, 0),
            end : new Date(y, m, d, 14, 0),
            allDay : false
         }, {
            title : 'Birthday Party',
            start : new Date(y, m, d + 1, 19, 0),
            end : new Date(y, m, d + 1, 22, 30),
            allDay : false
         }, {
            title : 'Click for Google',
            start : new Date(y, m, 28),
            end : new Date(y, m, 29),
            url : 'http://google.com/'
         } ]
      });

   });
</script>
</head>
<body>
<section id="portfolio" class="container">
<div id='calendar' style='margin: 3em 0;margin-top : 15%; font-size: 13px'></div>
</section>
</body>
</html>