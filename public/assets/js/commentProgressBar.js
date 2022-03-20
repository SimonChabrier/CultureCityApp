//first think to call progressBar.js and Jquery in header

//set max text lenght in caracters
const postLength = 280; 

// Listen changes on keyup & paste events.
$('#text-box').on('change keyup paste', function() {

  // We get the length of the input value
  let textLength = $('#text-box').val().length;

  // Calculate the percentage
  let percent = (textLength / postLength) * 100;

    if (percent > 30) {
        $('.progress-bar').css("background", "#ffc107");
    }

    if (percent > 60) {
        $('.progress-bar').css("background", "#ff5c00");
    }

    if (percent > 90) {
        $('.progress-bar').css("background", "#DD2A08");
    }

    if (percent < 100) {
        //set message visibility hidden < 100%
        $('.message').css("visibility", "hidden");;
    }
  
    if (percent >= 100) {
        
        // Limit the percentage to 100.
        percent = 100;
        $('.message').css("visibility", "visible");
    }

 
    // Set the width of the bar based on the percentage.
    $('.progress-bar').width(percent + '%');

        // UncommentAnimate to the width of the bar based on the percentage.
        /*
        $('.progress-bar').animate({
            width: percent + '%'
        }, 100) */
});


