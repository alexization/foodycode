CREATE DATABASE frdg;
use frdg;

drop table users;

CREATE TABLE users(
    id int NOT NULL AUTO_INCREMENT,
    uid varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    psword varchar(255) NOT NULL,
    age varchar(255) NOT NULL,
    gen varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    in_date datetime DEFAULT current_timestamp,

    PRIMARY KEY (id)
);


INSERT INTO users(uid,name,psword,age,gen,country,email)
    values("lls","steve","$2b$10$/mskNxMrdNIEXsXxFilGYePfHewwpwoK/lZ7DHw5sHBh6mgJYfRYW",42,"여","uzbekistan","lsdf@google.co.kr"),
    ("asd","alice","$2b$10$wcy51S1TrxwXJBU6LPN9veQnlk.CsyQn.56C8ku6KS9z59yUVAeka",33,"여","USA","lvvcdf@google.co.kr"),
    ("ees","billy","$2b$10$/mskNxMrdNIEXsXxFilGYePfHewwpwoK/lZ7DHw5sHBh6mgJYfRYW",67,"남","korea","lsaaaf@google.co.kr"),
    ("abv","mike","$2b$10$/mskNxMrdNIEXsXxFilGYePfHewwpwoK/lZ7DHw5sHBh6mgJYfRYW",19,"여","japan","lsasdsdf@google.co.kr"),
    ("ewq","andy","$2b$10$/mskNxMrdNIEXsXxFilGYePfHewwpwoK/lZ7DHw5sHBh6mgJYfRYW",25,"남","china","nssf@google.co.kr");


-- asd 유저는 비밀번호 1234
-- lls 유저와 그 외 나머지는 비밀번호 123




drop table allergies;

CREATE TABLE allergies(
    id int NOT NULL AUTO_INCREMENT,
    algname varchar(200) NOT NULL,

    PRIMARY KEY (id)
);

INSERT INTO allergies(algname)
VALUES 
    ("egg"),
    ("milk"),
    ("buckwheat"),
    ("peanut"),
    ("soybean"),
    ("wheat"),
    ("mackerel"),
    ("crab"),
    ("shrimp"),
    ("pork"),
    ("peach"),
    ("tomato"),
    ("sulfites"),
    ("walnut"),
    ("chicken"),
    ("beef"),
    ("shellfish"),
    ("mussel"),
    ("abalone"),
    ("oyster"),
    ("pinenut"),
    ("squid"),
    ("sesame"),
    ("almond");

drop table userAlgs;

CREATE TABLE userAlgs(
    id int NOT NULL AUTO_INCREMENT,
    algid int NOT NULL,
    uid int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (algid) REFERENCES allergies(id),
    FOREIGN KEY (uid) REFERENCES users(id)
);


INSERT INTO userAlgs(uid,algid)
    values(1,1),
    (1,3),
    (1,2),
    (1,10),
    (1,7),
    (2,3),
    (2,1),
    (2,4),
    (2,6),
    (3,1),
    (3,2),
    (3,3),
    (4,1),
    (4,2),
    (4,5),
    (4,6),
    (4,7),
    (4,8);


-- uid가 2이고 algid가 3인 행 삭제
-- DELETE FROM userAlgs
-- WHERE uid = 2 AND algid IN (3, 4, 5);


drop table restaurant;
CREATE TABLE restaurant(
    id int NOT NULL AUTO_INCREMENT,
    uid varchar(30) NOT NULL,
    psword varchar(30) NOT NULL,
    rest_name varchar(30) NOT NULL,
    address varchar(100) NOT NULL,
    ceo_name varchar(30) NOT NULL,
    tel varchar(30) NOT NULL,
    img_url varchar(50),

    
    PRIMARY KEY (id)
);


INSERT INTO restaurant(uid,psword,rest_name,address,ceo_name,tel,img_url)
 values
 /* restaurant 1  */    ("gomo","123","Gomone","10-3, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-766-5045","gomone"),
 /* restaurant 2  */    ("donk","123","Donkobokko","None","kim","033-0000-0000","donkobokko"),
 /* restaurant 3  */    ("wary","123","Waryonggwan","10-24, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","0507-1414-4571","waryonggwan"),
 /* restaurant 4  */    ("gwon","123","Gwonsikdang","33, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-762-0320","gwonsikdang"),
 /* restaurant 5  */    ("Imon","123","Imone","10-10, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","0507-1419-6522","imone"),
 /* restaurant 6  */    ("bapt","123","Baptongsultong","53, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","0507-1411-9212","baptongsultong"),
 /* restaurant 7  */    ("samg","123","Samgyeopsalmania","10-31, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-763-1174","Samgyeopsalmania"),
 /* restaurant 8  */    ("hese","123","HESED","10-1, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-763-7111","Hesed"),
 /* restaurant 9  */    ("ddor","123","Ddoreek","22, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","010-2651-1926","ddoreek"),


    -- ("gomo","123","Gomone","10-3, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-766-5045","myeongga"),
    -- ("lab","123","Grilled Chicken LAB","39, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","070-4623-0530","chicken-lab"),
    -- ("rid","123","Yeon Tan Bulgogi","1, Maenamdong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-742-5878","Yeon-Tan-Bulgogi"),
    --    ("teol","123","TeolBone","16, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","park","033-762-6786","teol-bone"),
    --    ("jeon","123","JeonSeonSeng","10-5, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","choi","033-760-3242","jeonseonseng"),
    --    ("zzd","123","Cheongnyeonpocha","23, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","jhon","033-760-7765","cheongnyeon"),
    --    ("qwe","123","Myeongga","20, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","lee","033-764-1024","myeongga");



-- CREAT TABLE ingredients(
--     id int NOT NULL AUTO_INCREMENT,
--     igd_name varchar(30) NOT NULL
    
-- );

-- INSERT INTO ingredients()
--     values("fork"),
--     values("ganzang"),
--     values("gochuzang"),
--     values("daepha"),
--     values("chiken"),
--     values("yangpa")
--     values("egg"),
--     values("peanut"),
--     values("pepper");




-- CREATE TABLE ingdAlgs(
--     id int NOT NULL AUTO_INCREMENT,
--     igd_id int NOT NULL,
--     alg_id int NOT NULL,
--     PRIMARY KEY (id),
--     FOREIGN KEY (alg_id) REFERENCES allergies(id),
--     FOREIGN KEY (igd_id) REFERENCES users(id)
-- );


-- INSERT INTO ingdAlgs(igd_id,alg_id)
--     values(1,3),
--     (7,2),
--     (8,1),
--     (2,8);


drop table menu;



CREATE TABLE menu(
    id int NOT NULL AUTO_INCREMENT,
    rest_id int NOT NULL,
    menu_name varchar(100) NOT NULL,
    roman_name varchar(100) NOT NULL,
    menu_price varchar(50) NOT NULL,
    img_url varchar(50) NOT NULL,
    menu_ing varchar(200) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(rest_id) REFERENCES restaurant(id)
    
);

-- img_url은 "가게명 + menu + 번호"
INSERT INTO menu(rest_id, menu_name, roman_name, menu_price, img_url, menu_ing)
 values
 /* 9 Ddoreek menu 1  */   ("9","Special Fruit Set","Seupesyeol gwail seteu", "6800", "ddoreek-menu1","Greek Yogurt 81g + 4 Kinds of Fruit + Granola 30g (Choose 1 from 3 options) + Honey Stick (Fruit selection varies depending on the season and availability) Strawberries, bananas, oranges, watermelon, kiwi, oriental melon, cantaloupe, Shine Muscat, Black Sapphire, grapefruit, etc."),
 /* 9 Ddoreek menu 2  */   ("9","Strawberry with Condensed Milk Set","Saengttalgi yeonyu seteu", "6800","ddoreek-menu2","Greek Yogurt 81g + Fresh Strawberries + Original Granola 30g + Cheese Cubes + Condensed Milk"),
 /* 9 Ddoreek menu 3  */   ("9","Melon Cheese Cube Set","Mellon chijeu kyubeu seteu", "6500","ddoreek-menu3","Greek Yogurt 81g + Melon Chunks + Original Granola 30g + Coconut Chunks + Cheese Cubes + Condensed Milk"),
 /* 9 Ddoreek menu 4  */   ("9","Grapefruit with Condensed Milk Set","Yeonyu jamong seteu", "6200","ddoreek-menu4","Greek Yogurt 81g + Grapefruit Chunks + Original Granola 30g + Chocolate Chips + Condensed Milk (Honey Stick is available instead of condensed milk)"),
 /* 9 Ddoreek menu 5  */   ("9","Yellow Cheese","Hwangchijeu", "4700","ddoreek-menu5","Cream Cheese Flavored Yogurt 90g + Cheese Crackers on Top"),
 /* 9 Ddoreek menu 6  */   ("9","Green Tea Chocolate ( aka. Supppacho )","Nokchachoko ( aka. Supppacho )", "4900","ddoreek-menu6","Matcha Flavored Greek Yogurt + Chocolate Balls + Coconut Chunks + Unsweetened Cocoa Powder + Chocolate Syrup"),
 /* 9 Ddoreek menu 7  */   ("9","Red Bean and Bean Powder coated Rice Cake","Patjeolmi", "4000","ddoreek-menu7","Greek Yogurt 81g + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (7 pieces) + Condensed Milk + Red Bean Paste + Almond Slices"),
 /* 9 Ddoreek menu 8  */   ("9","Boneless Spicy Braised Chicken","", "5200","ddoreek-menu8","Greek Yogurt 81g + Soybean Powder + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (20 pieces) + Condensed Milk + Allulose sweetener + Almond Slices"),
 /* 9 Ddoreek menu 9  */   ("9","Boneless Spicy Braised Chicken","", "4700","ddoreek-menu9","Greek Yogurt 81g + Sweet Crispy Rice Topping + Condensed Milk + Red Bean Paste + Sticky Rice Cake + Mini Yakgwa (Korean honey cookies)"),
 /* 9 Ddoreek menu 10 */   ("9","Boneless Spicy Braised Chicken","", "5900","ddoreek-menu10","Greek Yogurt 81g + 2 Kinds of Fruit (Chunky Diet Ball Composition) + Condensed Milk + Red Bean Paste + Sticky Rice Cake"),
 /* 9 Ddoreek menu 11 */   ("9","Boneless Spicy Braised Chicken","", "4700","ddoreek-menu11","Greek Yogurt 81g + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (7 pieces) + Sweet Potato Mousse + Almond Slices"),
 /* 9 Ddoreek menu 12 */   ("9","Boneless Spicy Braised Chicken","", "5900","ddoreek-menu12","Greek Yogurt 81g + 2 Kinds of Fruit + Original Granola 30g + Coconut Chunks + Cacao Nibs + Allulose sweetener (The fruit may vary depending on availability and could include options like orange, strawberry, Shine Muscat, Black Sapphire, grapefruit, etc.)"),
 /* 9 Ddoreek menu 13 */   ("9","Boneless Spicy Braised Chicken","", "5200","ddoreek-menu13","Greek Yogurt 81g + Banana Chunks + Nutella Scoop + Condensed Milk + Chocolate Pretzels + Sliced Almond + Chocolate Syrup (Add when ordering)"),
 /* 9 Ddoreek menu 14 */   ("9","Boneless Spicy Braised Chicken","", "5800","ddoreek-menu14","Greek Yogurt 90g + Dried Mango Chunks + Original Granola 30g + Coconut Chunks"),
 /* 9 Ddoreek menu 15 */   ("9","Boneless Spicy Braised Chicken","", "3800","ddoreek-menu15","Greek Yogurt 81g + Real Chocolate Granola 30g + Honey Stick"),
 /* 9 Ddoreek menu 16 */   ("9","Boneless Spicy Braised Chicken","", "3800","ddoreek-menu16","Greek Yogurt 81g + Strawberry Chocolate Granola 30g + Strawberry Jam"),
 /* 9 Ddoreek menu 17 */   ("9","Boneless Spicy Braised Chicken","", "4100","ddoreek-menu17","Greek Yogurt 81g + Original Granola 30g + Coconut Chunks + Cacao Nibs + Honey Stick"),






-- ("1","Boneless Spicy Braised Chicken","ppyeoeomneun dakbokkeumtang", "20000","gomo-dakbokkeumtang","Chicken, potato, onion, green onion, garlic, red pepper paste, soy sauce, sugar, red pepper powder"),
-- ("1","Sausage Hot Pot","budaejeongol", "20000","usapgyeopbudaejjigae","Sausage, pork, chicken, beef, tteokguk rice cake, cheese rice cake, glass noodles, kimchi, cheese, meat dumplings, bean sprouts, onion, cabbage, green onion"),
-- ("1","Beef Bulgogi with Rice","sobulgogideopbap", "8000","gomo-sobulgogideopbap","Beef, onion, cabbage, green onion, soy sauce, starch syrup, sesame oil, garlic, sugar, pepper"),
-- ("1","Bulgogi Fried Rice","bulgogibokkeumbap", "8000","gomo-bulgogibokkeumbap","Beef, carrots, green onions, shiitake mushrooms, starch syrup, sugar, green pepper, salt, garlic, soy sauce, pepper, sesame oil"),

-- ("1","Spicy Stir-fried Pork","jeyukbokkeum", "","",""),
-- ("1","Stir-fried Webfoot Octopus and Pork Belly","jjusambokkeum", "","",""),
-- ("1","Fried Boneless Chicken","sunsal chicken", "","",""),
-- ("1","Buffalo Wings","Buffalo Wing", "","",""),
-- ("1","Rolled Omelet with Cheese","cheese gyeranmari", "","",""),
-- ("1","Seafood and Cheese Tteokbokki","haemul cheese tteokbokki", "","",""),

-- ("2","Soy Sauce Glazed Fried Chicken","ganjang chicken", "17000","lab-ganjang-chicken","This is a soy sauce-based grilled chicken served with soy sauce, chicken, rice cake, and various sauces"),
-- ("2","Red Chili Paste Chicken","gochujang chicken", "17000","lab-ganjang-chicken","This is a red pepper paste-based grilled chicken served with red pepper paste, chicken, rice cake, and various sauces"),
-- ("2","Spicy Glazed Fried Chicken","	maeun chicken", "17000","lab-ganjang-chicken","Spicy sauce-based grilled chicken served with red pepper paste, chicken, rice cake, and various sauces"),
-- ("2","Grilled Salted Chicken","sogeum chicken", "18000","lab-sogeum-chicken","It is the lightest grilled chicken with a salt base and is served with salt, chicken, rice cake, and various sauces"),

-- ("3","Soy Sauce Bulgogi","Ganjangbulgogi", "7000","soy-sauce-bulgogi","pork, soy bean, egg, sesame, squid, leek, soy sauce, sugar, pepper, cooking wine, garlic, ginger"),
-- ("3","Gochujang Bulgogi","Gochujangbulgogi", "7000","gochujang-bulgogi", "pork, egg, sesame, squid, onion, carrot, leek, soy sauce, garlic, red pepper powder, red pepper paste"),
-- ("3","Gochujang Chicken","Gochujangchikin", "7500","gochujang-chicken","chicken, pork, egg, sesame, squid, onion, carrot, leek, soy sauce, garlic, red pepper powder, red pepper paste"),

-- ("4","Grilled Marinated Mackerel","Gogalbigui", "10000","gogalbigui","mackerel, sesame, soy bean, green onion, soy sauce, sugar, pepper, cooking wine, garlic, ginger, red pepper powder, red pepper paste"),
-- ("4","Chicken Gizzards","Dakttongjip", "9000","dakttongjip", "chicken gizzard, sesame, milk, oyster, garlic, green chilli pepper, soju, pepper, oyster sauce"),
-- ("4","Sundae","Sundae", "7500","sundae","pork, sesame, green onion, red pepper, napa cabbage, glutinous rice"),

-- ("5","Rice Pancake","Babjeon", "6000","pabjeon", "rice, egg, pork, crab, milk, wheat, soy bean, carrot, garlic, cabbage, green onion"),
-- ("5","Shred Potato Pancake","Gamjachejeon", "6000","gamjachejeon", "potato, egg, milk, crab, wheat, soy bean, sugar"),
-- ("5","Kimchi Pancake","Kimchijeon", "6000","kimchijeon", "kimchi, egg, squid, shrimp, wheat, soy bean, garlic, pancake powder"),
-- ("5","Seafood and Green Onin Pancake","Hemulpajeon", "9000","hemulpajeon", "egg, squid, shrimp, wheat, soy bean, mussel, pancake powder, chives"),

-- ("6", "Fried Boneless Chicken Plate","Tongsalpeulleiteu", "15000", "tongsalpeulleiteu","chicken, potato, soy bean, milk, peanut, tomato, bean sprouts, parsley, garlic, sugar, salt, katsuobushi, mayonnaise"),
-- ("6", "Stir-fried Beef Brisket with Mung Bean Sprouts","Chadolbagi sukjubokkeum", "13000", "sukjubokkeum","beef, peanut, soy bean, peach, bean sprouts, red pepper oil, soy sauce, oyster sauce, garlic, pepper, sugar, chives"),
-- ("6", "Korean-style Raw Beef for Freshman","Saenaegi yukoe", "13000", "saenaegi-yukoe","beef, sesame, egg, salt, sugar, garlic, pear, plum, soy sauce, soy bean"),

-- ("7", "Beef Loin and Sausage Jjigae","Usapgyeopbudaejjigae", "24000", "usapgyeopbudaejjigae","beef, ham, spam, enoki mushroom, udon noodles, soy bean, rice cake, ramen, dumpling, kimchi, chives, mugwort, sugar, salt, garlic, red pepper powder, red pepper paste"),
-- ("7", "Whole Shrimp and Sausage Jjigae","Tongsaeubudaejjigae", "22000", "tongsaeubudaejjigae","shrimp, ham, spam, dumpling, cheeze, green onion, mushroom, ramen, rice cake, soy bean, kimchi, sugar, salt, garlic, red pepper powder, red pepper paste"),
-- ("7", "Kimchi and Sausage Jjigae","Kimchibudaejjige", "20000", "kimchibudaejjige","kimchi, ham, spam, soy bean, green onion, mushroom, rice cake, soy bean, red pepper, ramen, sugar, salt, garlic, red pepper powder, red pepper paste"),
-- ("7", "Soft Bean Curd Sausage Jjigae","Sundububudaejjigae", "21000", "sundububudaejjigae","soy bean, kimchi, ham, spam, soy bean, green onion, mushroom, rice cake, red pepper, mushroom, ramen, sugar, salt, garlic, red pepper powder, red pepper paste");




drop table menuAlgs;

CREATE TABLE menuAlgs(
    id int NOT NULL AUTO_INCREMENT,
    alg_id int NOT NULL,
    menu_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (alg_id) REFERENCES allergies(id),
    FOREIGN KEY (menu_id) REFERENCES menu(id)
);


INSERT INTO menuAlgs(menu_id,alg_id) 
values
    -- 9. Ddoreek menu (17개) 74 ~ 90번
    (74, 8),
    (74, 24),
    (75, 8),
    (75, 24),
    (76, 8),
    (76, 24),
    (77, 8),
    (77, 24),
    (78, 8),
    (79, 8),
    (80, 8),
    (80, 24),
    

    -- (1, 4),
    -- (1, 23),
    -- (1, 18),
    -- (1, 15),
    -- (2, 10),
    -- (2, 14),
    -- (2, 23),
    -- (2, 22),
    -- (3, 15),
    -- (3, 10),
    -- (3, 2),
    -- (3, 23),
    -- (3, 22),
    -- (4, 7),
    -- (4, 5),
    -- (4, 23),
    -- (5, 18),
    -- (5, 4),
    -- (5, 15),
    -- (5, 23),
    -- (6, 10),
    -- (6, 23),
    -- (7, 1),
    -- (7, 10),
    -- (7, 8),
    -- (7, 2),
    -- (7, 6),
    -- (7, 5),
    -- (8, 1),
    -- (8, 2),
    -- (8, 8),
    -- (8, 6),
    -- (8, 5),
    -- (9, 1),
    -- (9, 2),
    -- (9, 8),
    -- (9, 6),
    -- (9, 5),
    -- (10, 1),
    -- (10, 2),
    -- (10, 8),
    -- (10, 6),
    -- (10, 5),
    -- (10, 18),
    -- (11, 15),
    -- (11, 5),
    -- (11, 2),
    -- (11, 4),
    -- (11, 12),
    -- (12, 16),
    -- (12, 4),
    -- (12, 5),
    -- (12, 11),
    -- (12, 20),
    -- (13, 16),
    -- (13, 23),
    -- (13, 1),
    -- (13, 5),
    -- (14, 16),
    -- (14, 6),
    -- (14, 10),
    -- (14, 5),
    -- (15, 2),
    -- (15, 9),
    -- (15, 10),
    -- (15, 16),
    -- (15, 5),
    -- (16, 5),
    -- (16, 10),
    -- (16, 16),
    -- (17, 5),
    -- (17, 10),
    -- (17, 16),
    -- (17, 2),
    -- (17, 1);







CREATE TABLE visithistory(
    id int NOT NULL AUTO_INCREMENT,
    uid varchar(30) NOT NULL,
    in_date datetime DEFAULT current_timestamp,

    PRIMARY KEY (id)
);

INSERT INTO visithistory(uid)
    values("lls");


CREATE TABLE igd(
    id int NOT NULL AUTO_INCREMENT,
    name varchar NOT NULL,
    PRIMARY KEY (id)
);



CREATE TABLE igdAlgs(
    id int NOT NULL AUTO_INCREMENT,
    alg_id int NOT NULL,
    igd_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (alg_id) REFERENCES allergies(id),
    FOREIGN KEY (igd_id) REFERENCES igd(id)
);






-- select *
-- FROM allergies inner join (
-- select userAlgs.algid
-- FROM users inner join userAlgs
-- ON users.id = userAlgs.uid
-- where users.uid = "lls"
-- );
-- ON allergies.id = userAlgs.algid

-- where (
-- select userAlgs.algid
-- FROM users inner join userAlgs
-- ON users.id = userAlgs.uid
-- where users.uid = "lls";
-- );

select allergies.algname
FROM users right join userAlgs
ON users.id = userAlgs.uid
inner join allergies ON userAlgs.algid = allergies.id
where users.uid = "lls";

select menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing
FROM menu left join restaurant ON menu.rest_id = restaurant.id
where restaurant.rest_name = "yeon tan bulgogi";


-- 메뉴이름, 알러지 전부 출력하는 쿼리
SELECT menu.menu_name, allergies.algname
FROM menu
LEFT JOIN restaurant ON menu.rest_id = restaurant.id
LEFT JOIN menuAlgs ON menu.id = menuAlgs.menu_id
LEFT JOIN allergies ON menuAlgs.alg_id = allergies.id
WHERE restaurant.rest_name = "yeon tan bulgogi";

-- 메뉴정보, 알러지 한번에 보내는 쿼리
select menu.menu_name ,menu.img_url, menu.menu_price, menu.menu_ing, allergies.algname
FROM menu 
LEFT JOIN restaurant ON menu.rest_id = restaurant.id
LEFT JOIN menuAlgs ON menu.id = menuAlgs.menu_id
LEFT JOIN allergies ON menuAlgs.alg_id = allergies.id
where restaurant.rest_name = 'yeon tan bulgogi';

where users.uid = lls;



#mysql -u root -p -h localhost

use login_lecture;
desc users;
select * from users;


-- --MySQL8.0버전 root 비밀번호 변경
-- ALTER user 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '변경할 비밀번호';
-- -- 변경사항 저장 (안해도 동작하긴 함)
-- FLUSH PRIVILEGES;


UPDATE restaurant 
SET rest_name = 'test' , address = 'test' , ceo_name = 'test' , tel ='test' 
where uid = 'teol';