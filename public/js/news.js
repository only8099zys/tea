$(function(){
    $("<link rel='stylesheet' href='../css/news.css'>").appendTo('head');
    $.ajax({
        url:"http://localhost:3000/news",
        type:"get",
        //data:undefined
        dataType:"json",
        success:function(res){
            console.log(res);
            var d1=document.querySelector("#d1");
            var html='';
            for(var r of res){
                html+=`<a href="${r.href}">${r.title}</a>
                        <p>${r.detailsLess}</p>
                `;
            }
            d1.innerHTML=html;
            $("#u1").on("click",function(e){
                console.log(111);
                var nid=e.target.getAttribute("data-target");
                console.log(nid);
                $.ajax({
                    url:"http://localhost:3000/news_classify",
                    type:"get",
                    data:{nid},
                    dataType:"json",//����ajax����json�ַ����Զ�תΪ����
                    success:function(res){
                        var d1=document.querySelector("#d1");
                        var html='';
                        for(var r of res){
                            html+=`<a href="${r.href}">${r.title}</a>
                            <p>${r.detailsLess}</p>`;
                        }
                        d1.innerHTML=html;
                    }
                })
            })
        }
    })
})
