/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {

$("#btn").click(function() {
    
    $.ajax({
        url: "https://public.opencpu.org/ocpu/library/",
        type: "GET",
        beforeSend: function( xhr ) {
           
        },
        success: function(data)
        {
            $( "p" ).append(data);
            alert(data);
        },
        error: function(request, error)
        {
            alert(" Can't do because: "+ error);
        }

    });
});

//    alert("ready!");
});

