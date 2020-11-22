$(document).ready(function(){
    jQuery.ajax({
        url: '/get_student_data',
        type: "post",
        data: {  },
        dataType: "json",
        success: function(response)
        {
            if(response.result)
            {
    
            }
            else
            {
    
            }
        }
    });

});