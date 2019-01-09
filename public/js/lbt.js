$(function(){
    $.ajax({
        url:'http://localhost:3000/lbt.html',
        type:'get',
        success: function(res) {
            $(res).replaceAll("#lbt");
        }
    })
})