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
	
	// var doc = document;	
	// var img = doc.getElementsByClassName('img_lot');
	// console.log(img[0].src); 
    
});

(function() {
	var doc = document;

	doc.addEventListener("DOMContentLoaded", function(event){
		var img = doc.getElementsByClassName('img_lot');
		//var img = doc.querySelectorAll('img_lot');
		
		for (var i=0;i<img.length;i++) {
			if (img[i].height > img[i].width) {

				var percent = (img[i].width/img[i].height) * 100;
				img[i].style.width = percent+"%";

				//console.log(percent+"%"); 

				var padding = (img[i].height - img[i].width) / 2;
				img[i].style.paddingLeft = padding+"px";
				img[i].style.paddingRight = padding+"px";
				img[i].style.align = "center";

				//console.log(padding+"px");
			}
		}

	});

})();


$(window).load(function(){
	// инициализация после того, как загрузились изображения на странице
	// теперь страница полностью загружена, включая все фреймы, объекты и картинки
});