$(function(){
    $.ajax({
        url:"http://localhost:3000/product_fl",
        type:"get",
        //data:undefined
        dataType:"json",//����ajax����json�ַ����Զ�תΪ����
        success:function(res){
            $("#u1").on("click",function(e){
                location.href='http://localhost:3000/tea_product.html'
            })
        }
    })
})

