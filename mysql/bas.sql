CREATE DATABASE frdg;
use frdg;

drop table users;

CREATE TABLE users(
    id int NOT NULL AUTO_INCREMENT,
    uid varchar(30) NOT NULL,
    name varchar(30) NOT NULL,
    psword varchar(30) NOT NULL,
    age varchar(30) NOT NULL,
    gen varchar(30) NOT NULL,
    country varchar(30) NOT NULL,
    email varchar(30) NOT NULL,
    in_date datetime DEFAULT current_timestamp,

    PRIMARY KEY (id)
);


INSERT INTO users(uid,name,psword,age,gen,country,email)
    values("lls","steve","123",42,"여","uzbekistan","lsdf@google.co.kr"),
    ("asd","alice","123",33,"여","USA","lvvcdf@google.co.kr"),
    ("ees","billy","1234",67,"남","korea","lsaaaf@google.co.kr"),
    ("abv","mike","1w3",19,"여","japan","lsasdsdf@google.co.kr"),
    ("ewq","andy","12e",25,"남","china","nssf@google.co.kr");







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
    ("soy bean"),
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
    ("pine nut"),
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
 values("rid","123","Yeon Tan Bulgogi","1, Maenamdong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","kim","033-742-5878","Yeon-Tan-Bulgogi"),
       ("teol","123","TeolBone","16, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","park","033-762-6786","teol-bone"),
       ("jeon","123","JeonSeonSeng","10-5, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","choi","033-760-3242","jeonseonseng"),
       ("zzd","123","Cheongnyeonpocha","23, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","jhon","033-760-7765","cheongnyeon"),
       ("qwe","123","Myeongga","20, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","lee","033-764-1024","myeongga");



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
    kor_name varchar(100) NOT NULL,
    roman_name varchar(100) NOT NULL,
    menu_price varchar(50) NOT NULL,
    img_url varchar(50) NOT NULL,
    menu_ing varchar(200) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(rest_id) REFERENCES restaurant(id)
    
);


INSERT INTO menu(rest_id,menu_name, kor_name, roman_name, menu_price,img_url,menu_ing)
 values("1","Soy Sauce Bulgogi", "간장불고기","Ganjangbulgogi", "7,000","soy-sauce-bulgogi","pork, soy bean, egg, sesame, squid, leek, soy sauce, sugar, pepper, cooking wine, garlic, ginger"),
("1","Gochujang Bulgogi", "고추장불고기","Gochujangbulgogi", "7,000","gochujang-bulgogi", "pork, egg, sesame, squid, onion, carrot, leek, soy sauce, garlic, red pepper powder, red pepper paste"),
("1","Gochujang Chicken", "고추장치킨","Gochujangchikin", "7,500","gochujang-chicken","chicken, pork, egg, sesame, squid, onion, carrot, leek, soy sauce, garlic, red pepper powder, red pepper paste"),

("2","Grilled Marinated Mackerel", "고갈비구이","Gogalbigui", "10,000","gogalbigui","mackerel, sesame, soy bean, green onion, soy sauce, sugar, pepper, cooking wine, garlic, ginger, red pepper powder, red pepper paste"),
("2","Chicken Gizzards", "닭똥집","Dakttongjip", "9,000","dakttongjip", "chicken gizzard, sesame, milk, oyster, garlic, green chilli pepper, soju, pepper, oyster sauce"),
("2","Sundae", "순대","Sundae", "7,500","sundae","pork, sesame, green onion, red pepper, napa cabbage, glutinous rice"),

("3","Rice Pancake", "밥전","Babjeon", "6,000","pabjeon", "rice, egg, pork, crab, milk, wheat, soy bean, carrot, garlic, cabbage, green onion"),
("3","Shred Potato Pancake", "감자채전","Gamjachejeon", "6,000","gamjachejeon", "potato, egg, milk, crab, wheat, soy bean, sugar"),
("3","Kimchi Pancake", "김치전","Kimchijeon", "6,000","kimchijeon", "kimchi, egg, squid, shrimp, wheat, soy bean, garlic, pancake powder"),
("3","Seafood and Green Onin Pancake", "해물파전","Hemulpajeon", "9,000","hemulpajeon", "egg, squid, shrimp, wheat, soy bean, mussel, pancake powder, chives"),

("4", "Fried Boneless Chicken Plate", "통살플레이트","Tongsalpeulleiteu", "15,000", "tongsalpeulleiteu","chicken, potato, soy bean, milk, peanut, tomato, bean sprouts, parsley, garlic, sugar, salt, katsuobushi, mayonnaise"),
("4", "Stir-fried Beef Brisket with Mung Bean Sprouts", "차돌박이 숙주볶음","Chadolbagi sukjubokkeum", "13,000", "sukjubokkeum","beef, peanut, soy bean, peach, bean sprouts, red pepper oil, soy sauce, oyster sauce, garlic, pepper, sugar, chives"),
("4", "Korean-style Raw Beef for Freshman", "새내기 육회","Saenaegi yukoe", "13,000", "saenaegi-yukoe","beef, sesame, egg, salt, sugar, garlic, pear, plum, soy sauce, soy bean"),

("5", "Beef Loin and Sausage Jjigae", "우삽겹부대찌개","Usapgyeopbudaejjigae", "24,000", "usapgyeopbudaejjigae","beef, enoki mushroom, udon noodles, soy bean, rice cake, dumpling, kimchi, chives, mugwort"),
("5", "Whole Shrimp and Sausage Jjigae", "통새우부대찌개","Tongsaeubudaejjigae", "22,000", "tongsaeubudaejjigae","shrimp, dumpling, cheeze, green onion, mushroom, rice cake, soy bean, kimchi");




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
(1, 5),
(1, 10),
(1, 1),
(1, 23),
(1, 22),
(2, 10),
(2, 1),
(2, 23),
(2, 22),
(3, 15),
(3, 10),
(3, 1),
(3, 23),
(3, 22),
(4, 7),
(4, 5),
(4, 23),
(5, 15),
(5, 23),
(5, 2),
(5, 20),
(6, 10),
(6, 23),
(7, 1),
(7, 10),
(7, 8),
(7, 2),
(7, 6),
(7, 5),
(8, 1),
(8, 2),
(8, 8),
(8, 6),
(8, 5),
(9, 1),
(9, 2),
(9, 8),
(9, 6),
(9, 5),
(10, 1),
(10, 2),
(10, 8),
(10, 6),
(10, 5),
(10, 18),
(11, 15),
(11, 5),
(11, 2),
(11, 4),
(11, 12),
(12, 16),
(12, 4),
(12, 5),
(12, 11),
(12, 20),
(13, 16),
(13, 23),
(13, 1),
(13, 5),
(14, 16),
(14, 6),
(14, 10),
(14, 5),
(15, 2),
(15, 9),
(15, 10),
(15, 16),
(15, 5);






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
    name varchar(200) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO igd (name) values
    ("간장"),
    ("고추장"),
    ("된장"),
    ("청정원 바베큐 간장양념"),
    ("양조간장"),
    ("태양초 고추장");


CREATE TABLE igdAlgs(
    id int NOT NULL AUTO_INCREMENT,
    alg_id int NOT NULL,
    igd_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (alg_id) REFERENCES allergies(id),
    FOREIGN KEY (igd_id) REFERENCES igd(id)
);

INSERT INTO igdAlgs (igd_id, alg_id) values
    (1, 5),
    (1, 6),
    (2, 5),
    (2, 6),
    (3, 5),
    (4, 2),
    (4, 5),
    (4, 6),
    (4, 10),
    (4, 12),
    (5, 5),
    (5, 6),
    (6, 5),
    (6, 6);




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