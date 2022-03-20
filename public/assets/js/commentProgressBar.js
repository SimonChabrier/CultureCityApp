//first think to call progressBar.js and Jquery in header

//set max text lenght in caracters
//const postLength = 280; 
const postLength = 10; 
//var value = $('#prog').val();

// Listen changes on keyup & paste events.
$('#text-box').on('change keyup paste', function() {

  // We get the length of the input value
  let textLength = $('#text-box').val().length;

  // Calculate the percentage
  let percent = (textLength / postLength) * 100;

    if (percent >= null) {
    $('.progress-bar').css("background", "#31AD12");
    }

    if (percent > 30) {
        $('.progress-bar').css("background", "#A8AD12");
    }

    if (percent > 60) {
        $('.progress-bar').css("background", "#DD760C");
    }

    if (percent > 90) {
        $('.progress-bar').css("background", "#DD2A08");
    }


    if (percent < 100) {

        //set message visibility class Off < 100%
        $('.message').addClass('messageOff').removeClass('messageOn');
        $('.progress-bar').addClass('progress-bar').removeClass('final-progress-bar');
    
    }
  
    if (percent >= 100) {
        // Limit the percentage to 100.
        percent = 100;

         //set message visibility class On > 100%
        $('.message').addClass('messageOn').removeClass('messageOff');
        //set progress bar end css class
        $('.progress-bar').addClass('final-progress-bar');

    }

 
    // Set the width of the bar based on the percentage.
    $('.progress-bar').width(percent + '%');

        // UncommentAnimate to the width of the bar based on the percentage.
        /*
        $('.progress-bar').animate({
            width: percent + '%'
        }, 100) */
});


