const express = require('express');
const pool =require('../pool');
const router =express.Router();

router.get('/',(req,res)=>{
    var sql='SELECT * FROM news';
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
            //console.log(result);
            res.send(result);
    });
});

module.exports=router;