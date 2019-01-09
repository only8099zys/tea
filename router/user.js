const express= require('express');

const pool=require('../pool.js');
var router = express.Router();

router.post('/reg',(req,res)=>{
  var obj=req.body;
  var $uname=req.body.uname;
  var $upwd=req.body.upwd;
  var $email=req.body.email;
  var $phone=req.body.phone;
  if(!$uname){
    res.send('用户名不能为空');
  }
  if(!$upwd){
    res.send('密码不能为空');
  }
  if(!$email){
    res.send('邮箱不能为空');
  }
  if(!$phone){
    res.send('手机号不能为空');
  }
  var sql='insert into user value(NULL,?,?,?,?)';
  pool.query(sql,[$uname,$upwd,$email,$phone],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send('1');
    }
    else{
      res.send('0');
    }
  });
});

router.post('/uname',(req,res)=>{
    var $uname=req.body.uname;
    var sql='select * from user where uname=?';
    pool.query(sql,$uname,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send('1');
        }
        else{
            res.send('0');
        }
    });
})
router.post('/email',(req,res)=>{
    var $email=req.body.email;
var sql='select * from user where email=?';
pool.query(sql,$email,(err,result)=>{
    if(err) throw err;
if(result.length>0){
    res.send('1');
}
else{
    res.send('0');
}
});
})
router.post('/phone',(req,res)=>{
    var $phone=req.body.phone;
var sql='select * from user where phone=?';
pool.query(sql,$phone,(err,result)=>{
    if(err) throw err;
if(result.length>0){
    res.send('1');
}
else{
    res.send('0');
}
});
})

router.post('/login',(req,res)=>{
  var $uname=req.body.uname;
  console.log($uname);
  var $upwd=req.body.upwd;

  if(!$upwd){
    res.send('密码不能为空');
    return ;
  }
  var sql='select * from user where uname=? and upwd=?';
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send('1');
    }
    else{
      res.send('0');
    }
  });
});
module.exports=router;