$(function(){
    $("<link rel='stylesheet' href='../css/tea_product.css'>").appendTo('head');
    //var page=location.search.slice(6);
    //console.log(page);
    $.ajax({
        url:"http://localhost:3000/product_fl",
        type:"get",
        //data:{page},
        dataType:"json",
        success:function(res){
            var res=res.data;
            var d1=document.querySelector("#d1");
            var html='';
            for(var r of res){
                html+=`<div>
                <a href="${r.href}"><img class='title' src="${r.pic}" alt=""/></a>
                <p class='title'>${r.tea_name}</p>
                </div>
                `;
            }
            d1.innerHTML=html;
            $("#u1").on("click",function(e){
                var tid=e.target.getAttribute("data-target");
                $.ajax({
                    url:"http://localhost:3000/tea",
                    type:"get",
                    data:{tid},
                    dataType:"json",//����ajax����json�ַ����Զ�תΪ����
                    success:function(res){
                        var dl=document.querySelector("#d1");
                        var html='';
                        for(var r of res){
                            html+=`<div>
                            <a href="${r.href}"><img class='title' src="${r.pic}" alt=""/></a>
                            <p class='title'>${r.tea_name}</p>
                            </div>`;
                        }
                        d1.innerHTML=html;
                    }
                })
            })
        }
    })
})

