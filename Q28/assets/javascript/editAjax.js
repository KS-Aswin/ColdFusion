$(document).ready(function() {

    $('.deleteLink').click(function() {
        var idPage =$(this).attr("data-id");        
        var _this= $(this);
        $.ajax({
            url: '../models/pages.cfc?method=deletePage',
            type: 'post',
            data:  {idPage: idPage},
            dataType:"json",
            success: function(response) {
                $(_this).parents("tr").remove();
                //$("#"+idPage).remove(); 
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
                    timeOut();  
                } else if (response.message === "exist"){
                    $(".successMsg").text('The title is already existing!');
                    timeOut();
                }else if (response.message === "added"){
                    $(".successMsg").text('Added Successfully');
                    timeOut();
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });       
        return false;
    });
    
    function  timeOut() {
        setTimeout(function() {
            window.location.href="../view/list.cfm";
        }, 1000);
    }
    
});