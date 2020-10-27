/* САМОЕ НАЧАЛО!!! */

/*require('./bootstrap');*/ /* закоментил строку на время */


$(document).ready(function() {
    
    /* Прилипание меню к верху страницы */
	// функцию скролла привязать к окну браузера
	$(window).scroll(function(){
		var distanceTop = $('#slideMenu').offset().top;
		if ($(window).scrollTop() >= distanceTop)
			$('nav').attr ("id", "fixed");
		else //if ($(window).scrollTop() < distanceTop)
			$('nav').attr ("id", "nav");
    });
    
});
