const express = require('express');
const pool =require('../pool');
const router =express.Router();

router.get('/',(req,res)=>{
    var $nid=req.query.nid;
console.log($nid);
var sql='SELECT * FROM news where nid=?';
pool.query(sql,[$nid],(err,result)=>{
    if(err) throw err;
        res.send(result);
    });
});

module.exports=router;