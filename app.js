const express=require('express');
const userRouter=require('./router/user.js');
const proRouter=require('./router/product_fl.js');
const teaRouter=require('./router/tea.js');
const newsRouter=require('./router/news.js');
const newsClassifyRouter=require('./router/news_classify.js');
const newsDetailsRouter=require('./router/news_details.js');
const detailsRouter=require('./router/details.js');
const bodyParser = require('body-parser');
const app=express();

app.listen(3000,function(){
	console.log("服务器创建成功");
});


app.use(express.static('public'));

app.use(bodyParser.urlencoded({
	extended:false
}));
app.use('/user',userRouter);
app.use('/product_fl',proRouter);
app.use('/tea',teaRouter);
app.use('/details',detailsRouter);
app.use('/news',newsRouter);
app.use('/news_classify',newsClassifyRouter);
app.use('/news_details',newsDetailsRouter);

