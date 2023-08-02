CREATE DATABASE frdg;
use frdg;

CREATE TABLE users(
    id int NOT NULL AUTO_INCREMENT,
    uid varchar(30) NOT NULL,
    name varchar(30) NOT NULL,
    psword varchar(30) NOT NULL,
    age varchar(30) NOt NULL,
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







CREATE TABLE allergies(
    id int NOT NULL AUTO_INCREMENT,
    algname varchar(200) NOT NULL,

    PRIMARY KEY (id)
);


INSERT INTO allergies(algname)
    values("땅콩"),
    ("계란"),
    ("돼지고기"),
    ("새우"),
    ("대두"),
    ("밀"),
    ("복숭아"),
    ("게"),
    ("우유"),
    ("고추");



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
    (1,4),
    (1,5),
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


drop table restaurant;
CREATE TABLE restaurant(
    id int NOT NULL AUTO_INCREMENT,
    rest_id varchar(30) NOT NULL,
    rest_name varchar(30) NOT NULL,
    address varchar(50) NOT NULL,
    ceo_name varchar(30) NOT NULL,
    tel varchar(30) NOT NULL,
    img_url varchar(50),

    
    PRIMARY KEY (id)
);


INSERT INTO restaurant(rest_id,rest_name,address,ceo_name,tel,img_url)
    values("rid","yeon tan bulgogi","addr","jhon","033-760-3333","Yeon-Tan-Bulgogi"),
("rid","saruerue","addr","jhon","033-760-3333","Korean-Barbeque"),
("rid","zzang dol","addr","jhon","033-760-3333","Zzang-Dol"),
("rid","haru","addr","jhon","033-760-3333","Hot-Pot-Stew");





CREAT TABLE ingredients(
    id int NOT NULL AUTO_INCREMENT,
    igd_name varchar(30) NOT NULL
    
);

INSERT INTO ingredients()
    values("fork"),
    values("ganzang"),
    values("gochuzang"),
    values("daepha"),
    values("chiken"),
    values("yangpa")
    values("egg"),
    values("peanut"),
    values("pepper");




CREATE TABLE ingdAlgs(
    id int NOT NULL AUTO_INCREMENT,
    igd_id int NOT NULL,
    alg_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (alg_id) REFERENCES allergies(id),
    FOREIGN KEY (igd_id) REFERENCES users(id)
);


INSERT INTO ingdAlgs(igd_id,alg_id)
    values(1,3),
    (7,2),
    (8,1),
    (2,8);



CREATE TABLE menu(
    id int NOT NULL AUTO_INCREMENT,
    rest_id varchar(30) NOT NULL,
    menu_name varchar(30) NOT NULL,
    menu_price varchar(50) NOT NULL
    
);


INSERT INTO menu()
    values("1","ganzang bulgogi","7000"),
        ("1","gochuzang bulgogi","7000"),
        ("1","dark bulgogi","7500");








CREATE TABLE visithistory(
    id int NOT NULL AUTO_INCREMENT,
    uid varchar(30) NOT NULL,
    in_date datetime DEFAULT current_timestamp,

    PRIMARY KEY (id)
);

INSERT INTO visithistory(uid)
    values("lls");




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


where users.uid = lls;



#mysql -u root -p -h localhost

use login_lecture;
desc users;
select * from users;
