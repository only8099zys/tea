$(function(){
    $("<link rel='stylesheet' href='../css/base.css'>").appendTo('head');
    $.ajax({
        url:'http://localhost:3000/header.html',
        type:'get',
        success: function(res) {
            $(res).replaceAll("#header");
        }
    })
})