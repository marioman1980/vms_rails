window.onload = function () {
	console.log("Helllo");
}

// Position nav at bottom of header when not collapsed
var positionNav = function() {
	if ($( window ).width() >= 768) {
		$('#nav-links').addClass('header-align-bottom');
	}
	else {
		$('#nav-links').removeClass('header-align-bottom');
	}		
}




$(document).ready(function(){
	$(window).resize(function() {
		positionNav();	
	});
	$(window).load(function() {
		positionNav();	
	});	
});