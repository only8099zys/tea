document.getElementById('b1').onclick=function(){
        var xhr=createXhr();
        xhr.onreadystatechange=function(){
            if(xhr.readyState==4&&xhr.status==200){
                var res=xhr.responseText;
                if (res == 1) {
                    document.getElementById('ss1').innerHTML='登录成功';
                    document.getElementById('ss1').className='text-success';
                    document.getElementById('d1').className=document.getElementById('d1').className.replace('hide_to','');
                    document.getElementById('bb1').onclick=function(){
                        location.replace('http://localhost:3000/index.html');
                    }
                }
                else {
                    document.getElementById('ss1').innerHTML='登录失败';
                    document.getElementById('ss1').className='text-danger';
                    document.getElementById('d1').className=document.getElementById('d1').className.replace('hide_to','');
                    document.getElementById('bb1').onclick=function(){
                        location.replace('http://localhost:3000/login.html');
                    }
                }
            }
        }
        xhr.open('post','/user/login',true);
        var $name=document.getElementById('uname').value;
        var $pwd=document.getElementById('upwd').value;
        xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        var data="uname="+$name+'&upwd='+$pwd;
        xhr.send(data);
}
/**
 * Created by web on 2018/11/12.
 */
