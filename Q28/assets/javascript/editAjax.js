$(document).ready(function() {

    $('.deleteLink').click(function() {
        var idPage =$(this).attr("value");
        $.ajax({
            url: '../models/pages.cfc?method=deletePage',
            type: 'post',
            data:  {idPage: idPage},
            dataType:"json",
            success: function(response) {
                
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
        return false;
    });
    
    $('#target').submit(function() {
        $(".errorMsg").html("");
        var title = $('#title').val().trim(); 
        var desc = $('#desc').val().trim();
        var idPage = $('#pageId').val().trim();
        $.ajax({
            url: '../models/pages.cfc?method=savePage',
            type: 'post',
            data:  {idPage: idPage , title: title , desc: desc},
            dataType:"json",
            success: function(response) {
                if (response.message === "edited"){
                    $(".successMsg").text('Edited Successfully');
                    setTimeout(function() {
                        window.location.href="../view/list.cfm";
                    }, 1000);  
                } else if (response.message === "exist"){
                    $(".successMsg").text('The title is already existing!');
                    setTimeout(function() {
                        window.location.href="../view/list.cfm";
                    }, 1000);
                }else if (response.message === "added"){
                    $(".successMsg").text('Added Successfully');
                    setTimeout(function() {
                        window.location.href="../view/list.cfm";
                    }, 1000);
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });       
        return false;
    });
});