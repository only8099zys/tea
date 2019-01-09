/**
 * Created by web on 2018/11/17.
 */
$(function(){
    $("<link rel='stylesheet' href='../css/details.css'>").appendTo('head');
    var tid=location.search.slice(5);
    console.log(tid);
    $.ajax({
        url:"http://localhost:3000/details",
        type:"get",
        data:{tid},
        dataType:"json",
        success:function(res){
            console.log(res);
            var d1=document.querySelector("#d1");
            var html='';
            html+=`<div class='row'>
                <div class='col-5'>
                    <div id='d3'></div>
                    <div id='d4' class="position-absolute"></div>
                    <div id="mask" class='hide'>
                    </div>
                </div>
                <div class='col-7'>
                    <div id='d2' class='hide'></div>
                    <p>茶名&nbsp&nbsp&nbsp${res[0].tea_name}</p>
                    <p>市场价&nbsp&nbsp&nbsp<span>${res[0].old_price.toFixed(2)}</span></p>
                    <p>现价&nbsp&nbsp&nbsp${res[0].new_price.toFixed(2)}</p>
                </div>
                <div class='col-12'>
                <p>${res[0].jieshao}</p>
                </div>
                <div class='col-12'>
                <p>生产地&nbsp&nbsp&nbsp${res[0].cd}</p>
                </div>
                <div class='col-12'>
                <p>保存方法&nbsp&nbsp&nbsp${res[0].bcff}</p>
                </div>
                <div class='col-12'>
                <p>保质期&nbsp&nbsp&nbsp${res[0].bzq}</p>
                </div>`;
            d1.innerHTML=html;
            var d4=document.getElementById("d4");
            var d3=document.getElementById("d3");
            var d2=document.getElementById("d2");
            var mask=document.getElementById("mask");
            d3.style.backgroundImage=`url('${res[0].pic}')`;
            d2.style.backgroundImage=`url('${res[0].pic}')`;
            d4.onmouseover=function(){
                mask.className=mask.className.replace("hide","");
                d2.className=d2.className.replace("hide","");
            }
            d4.onmouseout=function(){
                mask.className+=("hide");
                d2.className+=("hide");
            }
            var mSize=100;
            d4.onmousemove=function(e){
                var left=e.offsetX-mSize/2;
                var top=e.offsetY-mSize/2;
                mask.style.left=left+'px';
                mask.style.top=top+'px';
                d2.style.backgroundPosition=
                `-${16/7*left}px -${16/7*top}px`
            }
        }
    })

})