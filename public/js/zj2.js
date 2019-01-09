$(function(){
    $("<link rel='stylesheet' href='../css/tea_product.css'>").appendTo('head');
    $("<link rel='stylesheet' href='../css/zj.css'>").appendTo('head');
    $.ajax({
        url:'http://localhost:3000/zj2.html',
        type:'get',
        success: function(res) {
            $(res).replaceAll("#zj");
        }
    })
})
