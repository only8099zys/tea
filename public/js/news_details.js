/**
 * Created by web on 2018/11/17.
 */
$(function(){
    var nid=location.search.slice(5);
    //console.log(nid);
    $.ajax({
        url:"http://localhost:3000/news_details",
        type:"get",
        data:{nid},
        dataType:"json",
        success:function(res){
           // console.log(res);
            var d1=document.querySelector("#d1");
            var html="";
            html=`<p>${res[0].title}</p>
            <p>${res[0].author}</p><span>
            ${res[0].newsTime}</span>
            ${res[0].newsTime}</span>

            <p>${res[0].details}</p>
                 `;
            d1.innerHTML=html;
        }
    })

})