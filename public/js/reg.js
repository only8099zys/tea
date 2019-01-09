
//验证函数
function vali(txt,reg){
    return reg.test(txt);
}
//用户框聚焦
document.getElementById('uname').onfocus=function(){
    $('s1').className='';
}
//用户框失去焦点
document.getElementById('uname').onblur= function (){
    $uname=document.getElementById('uname').value;
    if(!$uname){
        document.getElementById("s1").innerHTML = '用户名不能为空';
        document.getElementById('s1').className = 'fail';
      return false;
    }
    else{
        if(vali($uname,/^\w{6,12}$/)){
            var xhr = createXhr();
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var res = xhr.responseText;

                    if (res == 1) {
                        document.getElementById("s1").innerHTML = '用户名已经存在';
                        document.getElementById('s1').className = 'fail';
                        return false;
                    }
                    else {
                        document.getElementById("s1").innerHTML = '用户名可以使用';
                        document.getElementById('s1').className = 'success';
                        return true;
                    }
                }
            }
            xhr.open('post', '/user/uname', true);
            $uname = $('uname').value;

            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            var data='uname='+$uname;
            xhr.send(data);
        }
        else{
            document.getElementById("s1").innerHTML="用户名格式错误";
            document.getElementById('s1').className = 'fail';
            return false;
        }
    }

}


//密码框聚焦
document.getElementById('upwd').onfocus= function(){
    document.getElementById('s2').className='';

}
//密码框失去焦点
document.getElementById('upwd').onblur=function(){
    $pwd=document.getElementById('upwd').value;
    if(!$pwd){
        document.getElementById("s2").innerHTML="密码不能为空";
        document.getElementById('s2').className = 'fail';
        return false;
    }
    else{

        if(vali($pwd,/^\d{6,12}$/)){
            document.getElementById("s2").innerHTML="密码格式正确";
            document.getElementById('s2').className = 'success';
            return true;
        }
        else{
            document.getElementById("s2").innerHTML="密码格式错误";
            document.getElementById('s2').className = 'fail';
            return false;
        }
    }

}

//确认密码聚焦
document.getElementById('npwd').onfocus= function(){
    document.getElementById('s3').className='';
}
//确认密码失去焦点
document.getElementById('npwd').onblur= function(){
    var $upwd=document.getElementById('upwd').value;
    var $npwd=document.getElementById('npwd').value;
    if(!$upwd){
        document.getElementById("s2").innerHTML="密码不能为空";
        document.getElementById('s2').className = 'fail';
        return false;
    }
    else{
        if(!$npwd){
            document.getElementById("s3").innerHTML="密码不能为空";
            document.getElementById('s3').className = 'fail';
            return false;
        }
        else{
            if($upwd==$npwd){
                document.getElementById('s3').innerHTML='密码一致';
                document.getElementById('s3').className = 'success';
                return true;
            }
            else{
                document.getElementById('s3').innerHTML='密码不一致';
                document.getElementById('s3').className = 'fail';
                return false;
            }
        }
    }

}

//邮箱聚焦
document.getElementById('email').onfocus=function(){
    document.getElementById('s4').className='';
}
//邮箱框失去焦点
document.getElementById('email').onblur= function (){

    $email=document.getElementById('email').value;
    if(!$email){
        document.getElementById("s4").innerHTML = '邮箱不能为空';
        document.getElementById('s4').className = 'fail';
        return false;
    }
    else{
        if(vali($email,/^[0-9a-zA-Z]{1}\w*@\w{2,4}\.[a-z]{2,3}$/)){
            var xhr = createXhr();

            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var res = xhr.responseText;

                    if (res == 1) {
                        document.getElementById("s4").innerHTML = '邮箱已经存在';
                        document.getElementById('s4').className = 'fail';
                        return false;
                    }
                    else {
                        document.getElementById("s4").innerHTML = '邮箱可以使用';
                        document.getElementById('s4').className = 'success';
                        return true;
                    }
                }
            }
            xhr.open('post', '/user/email', true);
            $email = document.getElementById('email').value;

            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            var data='email='+$email;
            xhr.send(data);
        }
        else{
            document.getElementById("s4").innerHTML="邮箱格式错误";
            document.getElementById('s4').className = 'fail';
            return false;
        }
    }

}

document.getElementById('phone').onfocus=function(){
    $('s5').className='';
}
//手机框失去焦点
document.getElementById('phone').onblur= function (){

    $phone=document.getElementById('phone').value;
    if(!$phone){
        document.getElementById("s5").innerHTML = '手机号不能为空';
        document.getElementById('s5').className = 'fail';
        return false;
    }
    else{
        if(vali($phone,/^(\+86|0086)?\s*1[3-8]\d{9}$/)){
            var xhr = createXhr();

            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var res = xhr.responseText;
                    if (res == 1) {
                        document.getElementById("s5").innerHTML = '手机号已经存在';
                        document.getElementById('s1').className = 'fail';
                        return false;
                    }
                    else {
                        document.getElementById("s5").innerHTML = '手机号可以使用';
                        document.getElementById('s5').className = 'success';
                        return true;
                    }
                }
            }
            xhr.open('post', '/user/phone', true);
            $phone = document.getElementById('phone').value;

            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            var data='phone='+$phone;
            xhr.send(data);
        }
        else{
            document.getElementById("s5").innerHTML="手机号格式错误";
            document.getElementById('s5').className = 'fail';
            return false;
        }
    }

}
function reg(){
    var xhr = createXhr();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var res = xhr.responseText;
            console.log(res);
            if (res == 1) {
                document.getElementById('ss1').innerHTML='注册成功';
                document.getElementById('ss1').className='text-success';
                document.getElementById('d1').className=document.getElementById('d1').className.replace('hide_to','');
                document.getElementById('bb1').onclick=function(){
                    location.replace('http://localhost:3000/login.html');
                }
            }
            else {
                document.getElementById('ss1').innerHTML='注册失败';
                document.getElementById('ss1').className='text-danger';
               // $('d1').className=$('d1').className.replace('hide_to','');
                document.getElementById('bb1').onclick=function(){
                    location.replace('http://localhost:3000/reg.html');
                }
            }
        }
    }
    xhr.open('post', '/user/reg', true);
    $uname = document.getElementById('uname').value;
    $upwd = document.getElementById('upwd').value;
    $email = document.getElementById('email').value;
    $phone = document.getElementById('phone').value;
    xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    var data='uname='+$uname+'&upwd='+$upwd+'&email='+$email+'&phone='+$phone;
    xhr.send(data);

}
document.getElementById('b1').onclick=function(){
    if(!(vali(document.getElementById('uname').value,/^\w{6,12}$/))==true){
       console.log(1);
        document.getElementById('uname').onfocus();
    }
    else if(!(vali(document.getElementById('upwd').value,/^\w{6,12}$/))==true){
        console.log(1);
        document.getElementById('upwd').onfocus();
    }
    else if(!(vali(document.getElementById('npwd').value,/^\w{6,12}$/))==true){
        console.log(1);
        document.getElementById('npwd').onfocus();
    }
    else if(!(vali(document.getElementById('email').value,/^[0-9a-zA-Z]{1}\w*@\w{2,4}\.[a-z]{2,3}$/))==true){
        console.log(1);
        document.getElementById('npwd').onfocus();
    }
    else if(!(vali(document.getElementById('phone').value,/^(\+86|0086)?\s*1[3-8]\d{9}$/))==true){
        console.log(1);
        document.getElementById('npwd').onfocus();
    }
    else{
        reg();
    }
}