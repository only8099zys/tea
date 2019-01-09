/**
 * Created by web on 2018/11/17.
 */
const express = require('express');
const pool =require('../pool');
const router =express.Router();

router.get('/',(req,res)=>{
    var $tid=req.query.tid;
    console.log($tid);
    var sql='SELECT * FROM tea_details where tid=?';
    pool.query(sql,[$tid],(err,result)=>{
    if(err) throw err;
    res.send(result);
    console.log(2);
    });
});

module.exports=router;