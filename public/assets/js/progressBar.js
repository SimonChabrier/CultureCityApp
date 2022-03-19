//first think to call progressBar.js and Jquery in header

//set max text lenght in caracters
const desiredLength = 5; 
//var message = $("#prog").val();

// Listen changes on keyup & paste events.
$('#text-box').on('change keyup paste', function() {
  // We get the length of the input value
  let textLength = $('#text-box').val().length;

  // Calculate the percentage
  let percent = (textLength / desiredLength) * 100;
  
    if (percent > 100) {
        // Limit the percentage to 100.
        percent = 100;

        //set progress bar end css class
        let message = "100%";
        $('#prog').append(message);
        $('.progress-bar').addClass('final-progress-bar');

    }

    if (percent < 100) {

       //todo message.remove()
        $('.progress-bar').addClass('progress-bar').removeClass('final-progress-bar');
    
    }


  // Set the width of the bar based on the percentage.
  $('.progress-bar').width(percent + '%');

  // Animate the width of the bar based on the percentage.
  /* $('.progress-bar').animate({
    width: percent + '%'
  }, 0) */
});


