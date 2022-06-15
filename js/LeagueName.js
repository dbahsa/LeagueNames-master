$(document).ready(function() {
	getNames();
	updateCountdown();
	$('#LeagueName').change(updateCountdown);
	$('#LeagueName').keyup(updateCountdown);
});

function getNames(){
	$("#NameTable").load("scripts/GetNames.php");
}

function updateCountdown() {
	var remaining = 32 - $('#LeagueName').val().length;
	var color;
	if(remaining > 8 && remaining < 17) {
		color = 'orange';
	} else if(remaining <= 8 && remaining >= 0){
		color = 'red';
	}
	$('.countdown').html("<p style='color:" + color + "'><b>" + remaining + "</b></p>");
}

$(document.body).on("click", "#newNameSubmit", function() {
	var Name = document.getElementById('LeagueName').value;
	$.ajax({
		url: 'scripts/NewName.php',
		type: 'POST',
		data: {arg1: Name},
		success: function(data) {
			document.getElementById("nameForm").reset();
			getNames();
			updateCountdown();
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			alert("Some Error");
		}
	});
});
