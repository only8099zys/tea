$(function(){
    $.ajax({
        url:"http://localhost:3000/news",
        type:"get",
        //data:undefined
        dataType:"json",//����ajax����json�ַ����Զ�תΪ����
        success:function(res){
            $("#u1").on("click",function(e){
                location.href='http://localhost:3000/news.html'
            })
        }
    })
})

