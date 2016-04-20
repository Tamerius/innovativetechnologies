function colorCall() {
	var color = $("#color").val();
    if (color.length > 0) {
    	// Format rgb color
    	var formatted = color.replace("rgb(", "");	// Remove rgb
    	formatted = color.replace("rgb(", "");		// Remove rgba
    	formatted = formatted.replace(")", "");		// Remove }
    	console.log(formatted);
	
		$.ajax({
	        "url": "API.php?color=" + formatted,
	        "method": "GET",
	    });
	}
}

function themeCall() {
    console.log($(this).data("theme"));
    $.ajax({
        "url": "API.php?theme=" + $(this).data("theme"),
        "method": "GET",
    });
}