$(document).ready(function() {
    $('#check').click(function() {
        var name = $('#name').val(); 
        var email = $('#email').val();
        if (name.trim() === '' || email.trim() === '') {
            alert('Please Enter values in all Fields!..');
            return;
        }
        $.ajax({
            url: 'components/q24.cfc?method=mailCheck',
            type: 'post',
            data: {name: name, email: email}, 
            dataType: "json",
            success: function(response) {
                if (response.message == "exists") {
                    alert('Email id is Already Subscribed');
                    $('#submit').prop('disabled',true);
                } else {
                    alert('Email id is not Subscribed Yet');
                    $('#submit').prop('disabled',false);
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred : " +error);
            }
        });
    });
});
