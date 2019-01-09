$(function(){
    $.ajax({
        url:"http://localhost:3000/news",
        type:"get",
        //data:undefined
        dataType:"json",//告诉ajax，将json字符串自动转为对象
        success:function(res){
            $("#u1").on("click",function(e){
                location.href='http://localhost:3000/news.html'
            })
        }
    })
})

