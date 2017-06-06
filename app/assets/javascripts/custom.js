window.onload = function () {
	console.log("Helllo");
}

// Position nav at bottom of header when not collapsed
$(document).ready(function(){
	$(window).resize(function() {
		if ($( window ).width() >= 768) {
			$('#nav-links').addClass('header-align-bottom');
		}
		else {
			$('#nav-links').removeClass('header-align-bottom');
		}		
	});
});