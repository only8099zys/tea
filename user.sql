SET NAMES UTF8;

drop database if exists pro;
create database pro charset=UTF8;
use pro;
create table user(
  id SMALLINT primary key  auto_increment,
  uname varchar(16),
  upwd varchar(16),
  email varchar(32),
  phone varchar(32)
);
insert into user value
(1,'qweqwe','123456','qq@qq.con','15755442221'),
(null,'asdasd','123456','qq@qq.cd','15755442222'),
(null,'zxczxc','123456','qq@qq.cn','15755442223'),
(null,'qweasdzxc','123456','qq@qq.cm','15755442224');

create table tea_series(
  series_classify SMALLINT,
  series_name varchar(16)
);
create table tea_details(
  tid SMALLINT PRIMARY KEY auto_increment,
  tea_name VARCHAR(16),
  tea_classify varchar(16),
  old_price SMALLINT,
  new_price SMALLINT,
  jieshao varchar(1024),
  cd varchar(32),
  bzq varchar(128),
  bcff varchar(32),
  pic varchar(32),
  href varchar(32)
  );

insert into tea_details value
(1,'润津','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','images/润津.jpg','tea_details.html?tid=1'),
(null,'龙津','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','images/龙津.jpg','tea_details.html?tid=2'),
(null,'典藏大红袍佳品','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/典藏大红袍佳品.jpg','tea_details.html?tid=3'),
(null,'大红袍(红字一号)','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/大红袍(红字一号).jpg','tea_details.html?tid=4'),
(null,'醇津','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/醇津.jpg','tea_details.html?tid=5'),
(null,'岩韵大红袍','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/岩韵大红袍.jpg','tea_details.html?tid=6'),
(null,'怡津','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/怡津.jpg','tea_details.html?tid=7'),
(null,'御品天尊大红袍','1',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/御品天尊大红袍.jpg','tea_details.html?tid=8'),
(null,'金玉满堂','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/金玉满堂.jpg','tea_details.html?tid=9'),
(null,'浓情花语','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/浓情花语.jpg','tea_details.html?tid=10'),
(null,'添福添寿','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/添福添寿.jpg','tea_details.html?tid=11'),
(null,'香碧螺','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/香碧螺.jpg','tea_details.html?tid=12'),
(null,'香螺茉莉','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/香螺茉莉.jpg','tea_details.html?tid=13'),
(null,'珍珠茉莉','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/珍珠茉莉.jpg','tea_details.html?tid=14'),
(null,'紫色玫瑰花茶','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/紫色玫瑰花茶.jpg','tea_details.html?tid=15'),
(null,'醉天轩','2',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/醉天轩.jpg','tea_details.html?tid=16'),
(null,'百年老枞普洱茶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/百年老枞普洱茶.jpg','tea_details.html?tid=17'),
(null,'大白茶饼','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/大白茶饼.jpg','tea_details.html?tid=18'),
(null,'菊普小沱茶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/菊普小沱茶.jpg','tea_details.html?tid=19'),
(null,'龙凤呈祥','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/龙凤呈祥.jpg','tea_details.html?tid=20'),
(null,'玫瑰普洱小沱茶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/玫瑰普洱小沱茶.jpg','tea_details.html?tid=21'),
(null,'某某生普洱茶饼特级古树黑茶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/某某生普洱茶饼特级古树黑茶.jpg','tea_details.html?tid=22'),
(null,'某某生普洱茶饼月光仙子白茶饼','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/某某生普洱茶饼月光仙子白茶饼.jpg','tea_details.html?tid=23'),
(null,'某某熟普洱茶饼黑茶特级茶叶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/某某熟普洱茶饼黑茶特级茶叶.jpg','tea_details.html?tid=24'),
(null,'某某熟普洱茶黑茶饼特级茶叶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/某某熟普洱茶黑茶饼特级茶叶.jpg','tea_details.html?tid=25'),
(null,'特制宫廷小沱茶','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/特制宫廷小沱茶.jpg','tea_details.html?tid=26'),
(null,'云南七子青饼','3',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/云南七子青饼.jpg','tea_details.html?tid=27'),
(null,'袋泡玄米茶','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/袋泡玄米茶.jpg','tea_details.html?tid=28'),
(null,'金萱凤梨酥','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/金萱凤梨酥.jpg','tea_details.html?tid=29'),
(null,'绿茶蜜酥(绿茶水果酥)','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/绿茶蜜酥(绿茶水果酥).jpg','tea_details.html?tid=30'),
(null,'绿茶巧果','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/绿茶巧果.jpg','tea_details.html?tid=31'),
(null,'绿茶燕麦','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/绿茶燕麦.jpg','tea_details.html?tid=32'),
(null,'软质茶糕','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/软质茶糕.jpg','tea_details.html?tid=33'),
(null,'铁观音金桔','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/铁观音金桔.jpg','tea_details.html?tid=34'),
(null,'蒸青绿茶粉','4',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/蒸青绿茶粉.jpg','tea_details.html?tid=35'),
(null,'彩云追月','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/彩云追月.jpg','tea_details.html?tid=36'),
(null,'大锦月','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/大锦月.jpg','tea_details.html?tid=37'),
(null,'大团员','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/大团员.jpg','tea_details.html?tid=38'),
(null,'功夫茶月饼','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/功夫茶月饼.jpg','tea_details.html?tid=39'),
(null,'金皇尊御礼','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/金皇尊御礼.jpg','tea_details.html?tid=40'),
(null,'名饼荟萃','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/名饼荟萃.jpg','tea_details.html?tid=41'),
(null,'圆满心意','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/圆满心意.jpg','tea_details.html?tid=42'),
(null,'紫色盒子','5',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/紫色盒子.jpg','tea_details.html?tid=43'),
(null,'曹衣俪人壶组','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/曹衣俪人壶组.jpg','tea_details.html?tid=44'),
(null,'黛玉单壶','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/黛玉单壶.jpg','tea_details.html?tid=45'),
(null,'红夏壶','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/红夏壶.jpg','tea_details.html?tid=46'),
(null,'虎啸风生','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/虎啸风生.jpg','tea_details.html?tid=47'),
(null,'牡丹饮杯组','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/牡丹饮杯组.jpg','tea_details.html?tid=48'),
(null,'事事如意壶组','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/事事如意壶组.jpg','tea_details.html?tid=49'),
(null,'紫砂风云壶组','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/紫砂风云壶组.jpg','tea_details.html?tid=50'),
(null,'紫砂水心单壶','6',280,260,'润津铁观音是面向闽南地区的特色商品,因此符合闽方人饮茶的口味与需求,其颗粒结实,有如珍珠般自然圆润,色泽砂绿,是属于轻发酵的铁观音。','福建安溪','二年','密封、防潮、防异味、冷藏','../images/紫砂水心单壶.jpg','tea_details.html?tid=51');

create table news(
  nid SMALLINT PRIMARY KEY auto_increment,
  newsClassify varchar(16),
  title varchar(200),
  author varchar(16),
  newsTime varchar(32),
  llCount varchar(100),
  detailsLess varchar(100),
  details varchar(2048),
  href varchar(200)
);
insert into news values
(1,"1","嚼茶叶可缓解牙齿过敏","tea-100","2018-11-21","195浏览","很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?","很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?                                                                专家介绍说，牙齿发酸属于一种牙本质过敏症状，原因有可能是牙釉质缺乏致使牙本质暴露，或者是釉质发育钙化不良，也有可能是由于长期用一侧咀嚼食物，导致一侧牙齿磨耗严重。防治牙本质过敏，除了勤刷牙等常用的清洁口腔的方法以外，还有几个小窍门可以采用。很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?专家介绍说，牙齿发酸属于一种 牙本质过敏症状，原因有可能是牙釉质缺乏致使牙本质暴露，或者是釉质发育钙化不良，也有可能是由于长期用一侧咀嚼食物，导致一侧牙齿磨耗严重。防治牙本质 过敏，除了勤刷牙等常用的清洁口腔的方法以外，还有几个小窍门可以采用。比如患者可以嚼点生核桃仁，或者用新鲜大蒜的横切面反复涂擦牙齿酸疼的过敏部位。大蒜素具有抗菌消炎作用，用于治疗牙本质过敏具有一定的效果。生核桃仁里含有大量的鞣酸，它可以使牙本质小管中的蛋白质凝固，也能起到脱敏的作用。还有一个简单方便的方法，那就是利用我们身边随处可见的茶叶。过夜茶不要随意丢掉，可以“废物利用”，放在口中尤其是过敏的牙齿部位咀嚼一下。也可以将 新鲜茶叶直接放入牙齿的敏感部位轻轻咀嚼。研究表明，茶叶中含有丰富的氟和茶多酚等成分，茶多酚具有消毒、杀菌之功效，它不但能抑制龋齿菌的生长，还能增 强牙釉质的抗酸能力，而且在有氟参与的情况下，抗酸能力会出乎意料地增强。此外，茶叶中的氟离子对牙齿还有很好的保健作用，它与牙齿的钙质有很大的亲和 力，这就像给牙齿加上了一个保护层。用咀嚼茶叶的方法来治疗牙齿酸痛时，不必选用高档茶，因为高档茶的含氟量反而较低档茶要少很多。以上这些方法都是在牙齿出现酸痛之后的补救措施，其实它们对于牙齿疾病的防范也同样有用。当然，通过长期喝茶也可以起到一定的牙齿保健作用。另外，为防止牙本质过敏，较好平时用两侧牙齿来咀嚼食物，以避免一侧牙齿过度磨耗，并且较好少吃硬质食品。","http://localhost:3000/news_details.html?nid=1"),
(null,"2","某某茶叶获评国家农业产业化重点龙头企业","某某日报","2018-11-21","195浏览","很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?","很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?专家介绍说，牙齿发酸属于一种牙本质过敏症状，原因有可能是牙釉质缺乏致使牙本质暴露，或者是釉质发育钙化不良，也有可能是由于长期用一侧咀嚼食物，导致一侧牙齿磨耗严重。防治牙本质过敏，除了勤刷牙等常用的清洁口腔的方法以外，还有几个小窍门可以采用。很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?专家介绍说，牙齿发酸属于一种 牙本质过敏症状，原因有可能是牙釉质缺乏致使牙本质暴露，或者是釉质发育钙化不良，也有可能是由于长期用一侧咀嚼食物，导致一侧牙齿磨耗严重。防治牙本质 过敏，除了勤刷牙等常用的清洁口腔的方法以外，还有几个小窍门可以采用。比如患者可以嚼点生核桃仁，或者用新鲜大蒜的横切面反复涂擦牙齿酸疼的过敏部位。大蒜素具有抗菌消炎作用，用于治疗牙本质过敏具有一定的效果。生核桃仁里含有大量的鞣酸，它可以使牙本质小管中的蛋白质凝固，也能起到脱敏的作用。还有一个简单方便的方法，那就是利用我们身边随处可见的茶叶。过夜茶不要随意丢掉，可以“废物利用”，放在口中尤其是过敏的牙齿部位咀嚼一下。也可以将 新鲜茶叶直接放入牙齿的敏感部位轻轻咀嚼。研究表明，茶叶中含有丰富的氟和茶多酚等成分，茶多酚具有消毒、杀菌之功效，它不但能抑制龋齿菌的生长，还能增 强牙釉质的抗酸能力，而且在有氟参与的情况下，抗酸能力会出乎意料地增强。此外，茶叶中的氟离子对牙齿还有很好的保健作用，它与牙齿的钙质有很大的亲和 力，这就像给牙齿加上了一个保护层。用咀嚼茶叶的方法来治疗牙齿酸痛时，不必选用高档茶，因为高档茶的含氟量反而较低档茶要少很多。以上这些方法都是在牙齿出现酸痛之后的补救措施，其实它们对于牙齿疾病的防范也同样有用。当然，通过长期喝茶也可以起到一定的牙齿保健作用。另外，为防止牙本质过敏，较好平时用两侧牙齿来咀嚼食物，以避免一侧牙齿过度磨耗，并且较好少吃硬质食品。","http://localhost:3000/news_details.html?nid=2"),
(null,"3","某某铁观音喜获省名优茶银奖","某某日报","2018-11-21","195浏览","此次评选将进一步提高全省茶叶加工技术与质量卫生安全水平，促进名优茶生产，推动我省茶产业持续健康发展。","很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?专家介绍说，牙齿发酸属于一种牙本质过敏症状，原因有可能是牙釉质缺乏致使牙本质暴露，或者是釉质发育钙化不良，也有可能是由于长期用一侧咀嚼食物，导致一侧牙齿磨耗严重。防治牙本质过敏，除了勤刷牙等常用的清洁口腔的方法以外，还有几个小窍门可以采用。很多人的牙齿一吃刺激性的东西就酸酸的，这是怎么回事呢?专家介绍说，牙齿发酸属于一种 牙本质过敏症状，原因有可能是牙釉质缺乏致使牙本质暴露，或者是釉质发育钙化不良，也有可能是由于长期用一侧咀嚼食物，导致一侧牙齿磨耗严重。防治牙本质 过敏，除了勤刷牙等常用的清洁口腔的方法以外，还有几个小窍门可以采用。比如患者可以嚼点生核桃仁，或者用新鲜大蒜的横切面反复涂擦牙齿酸疼的过敏部位。大蒜素具有抗菌消炎作用，用于治疗牙本质过敏具有一定的效果。生核桃仁里含有大量的鞣酸，它可以使牙本质小管中的蛋白质凝固，也能起到脱敏的作用。还有一个简单方便的方法，那就是利用我们身边随处可见的茶叶。过夜茶不要随意丢掉，可以“废物利用”，放在口中尤其是过敏的牙齿部位咀嚼一下。也可以将 新鲜茶叶直接放入牙齿的敏感部位轻轻咀嚼。研究表明，茶叶中含有丰富的氟和茶多酚等成分，茶多酚具有消毒、杀菌之功效，它不但能抑制龋齿菌的生长，还能增 强牙釉质的抗酸能力，而且在有氟参与的情况下，抗酸能力会出乎意料地增强。此外，茶叶中的氟离子对牙齿还有很好的保健作用，它与牙齿的钙质有很大的亲和 力，这就像给牙齿加上了一个保护层。用咀嚼茶叶的方法来治疗牙齿酸痛时，不必选用高档茶，因为高档茶的含氟量反而较低档茶要少很多。以上这些方法都是在牙齿出现酸痛之后的补救措施，其实它们对于牙齿疾病的防范也同样有用。当然，通过长期喝茶也可以起到一定的牙齿保健作用。另外，为防止牙本质过敏，较好平时用两侧牙齿来咀嚼食物，以避免一侧牙齿过度磨耗，并且较好少吃硬质食品。","http://localhost:3000/news_details.html?nid=3");

