@php
$вывод = "";
if (isset($_COOKIE['login'])) $вывод = $_COOKIE['login'];

$login_json = json_encode($вывод);
@endphp

<div id="lk_menu">

	<span id="contact">
		<a href="/site_pzm/vhod/index.php">Вход</a>
		<a href="/site_pzm/registraciya/index.php?st=zero">Регистрация</a>
	</span>

	<ul class="lk_topmenu">
		<li class="lk_topmenu_li">
			<a href="#"><label id="client"></label></a>
				
			<ul class="lk_submenu">	
				<li><a href="/site_pzm/lk/sozdanie.php">Создать заявку</a></li>
				<li><a href="/site_pzm/lk/zayavki.php">Ваши заявки</a></li>
				<li><a href="/site_pzm/lk/exit.php">Выход</a></li>			
			</ul>
				
		</li>
	</ul>

</div>

<script>
$(document).ready (function (){
	var login = <?=$login_json;?>;
	if (login != "") {
		$('#contact').hide ();		
		$('#client').html (login);
		$('#client').show ();
	}else {
		$('.lk_topmenu').hide ();
	}
});
</script>