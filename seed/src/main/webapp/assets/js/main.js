/* Chart.js */


/* Fullcalendar.js */  
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
		initialView: 'dayGridMonth',
		start: 'prevYear, prev, next, nextYear today',
		center: 'title',
		end: 'dayGridMonth, dayGridWeek, dayGridDay',
		width: 515
    });
	calendar.render();
	calendar.setOption();
});			
