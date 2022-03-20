//* first think to call progressBar.js and Jquery in header

// set max text lenght in caracters for input form fields
// this is in link with an assert in Post.php on property $content
const postLength = 280; 

/**
 * Method:
 * Listen changes on keyup & paste events.
 * Change progress bar state in %
 * Change background css properties
 */
$('#text-box').on('change keyup paste', function() {

  // We get the length of the form field input value by form field Id
  let textLength = $('#text-box').val().length;

  // We calculate the percentage value
  let percent = (textLength / postLength) * 100;

     // set the different css property for progressbar background
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
        // Display the limit caracters lenght message
        $('.message').css("visibility", "visible");
    }

 
    // Set the width of the bar based on the percentage.
    $('.progress-bar').width(percent + '%');

        // Uncomment for animate to the width of the bar based on the percentage.
        /*
        $('.progress-bar').animate({
            width: percent + '%'
        }, 100) */
});


