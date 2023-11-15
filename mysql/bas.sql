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
    img_url varchar(200),

    
    PRIMARY KEY (id)
);


INSERT INTO restaurant(uid,psword,rest_name,address,ceo_name,tel,img_url)
 values
 /* restaurant 1  */    ("gomo","123","Gomone","10-3, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","033-766-5045","gomone"),
 /* restaurant 2  */    ("donk","123","Donkobokko","None","????","033-0000-0000","donkobokko"),
 /* restaurant 3  */    ("wary","123","Waryonggwan","10-24, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","0507-1414-4571","waryonggwan"),
 /* restaurant 4  */    ("gwon","123","Gwonsikdang","33, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","033-762-0320","gwonsikdang"),
 /* restaurant 5  */    ("Imon","123","Imone","10-10, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","0507-1419-6522","imone"),
 /* restaurant 6  */    ("bapt","123","Baptongsultong","53, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","0507-1411-9212","baptongsultong"),
 /* restaurant 7  */    ("samg","123","Samgyeopsalmania","10-31, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","033-763-1174","samgyeopsalmania"),
 /* restaurant 8  */    ("hese","123","HESED","10-1, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","033-763-7111","hesed"),
 /* restaurant 9  */    ("ddor","123","Ddoreek","22, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","010-2651-1926","ddoreek"),
 /* restaurant 10  */   ("chic","123","Chicken Lab","39, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","070-4623-0530","chickenlab"),                    
 /* restaurant 11  */   ("kkok","123","Kkokkomeokko","10-7, Sedong-gil, Heungeop-myeon, Wonju-si, Gangwon-do","????","033-763-3400","kkokkomeokko");


/* 더미 데이터 */ 
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
    menu_ing varchar(500) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(rest_id) REFERENCES restaurant(id)
    
);

/* 식당: 11개, 메뉴: 103개 */
/* ????는 추후에 넣어야할 데이터 */
-- img_url은 "가게명 + menu + 번호"
INSERT INTO menu(rest_id, menu_name, roman_name, menu_price, img_url, menu_ing)
 values
    /* 없는 메뉴 사진 모두 menu_init으로 통일 */
    ("1","Stir-fried Squid with Rice","ojingeo deopbap", "7000", "menu_init","Spicy stir-fried Squid with rice"),
    ("1","Spicy Stir-fried Pork with Rice","jeyuk deopbap", "7000", "menu_init","Spicy stir-fried pork(red pepper paste - gochujang) with rice"),
    ("1","Spicy Noodle Soup", "jangkalguksu","7000", "menu_init","Noodles in anchovy broth mixed with miso and red chili paste (gochujang)"),
    ("1","Rice Cake and Mandu Soup","tteong manduguk", "7000", "menu_init","Rice cake and dumpling soup cooked in anchovy broth with seaweed on top"),
    ("1","Noodle Soup","kalguksu", "7000", "menu_init","Basic noodle soup prepared with anchovy-based broth"),

    ("2","Grilled Pork Set","dwaejigogi gui seteu", "????", "menu_init","????"),     /* Description, 가격 정보 필요 */ 
    ("2","Galbi Soup","galbitang", "9000", "menu_init","A clear soup made from beef rib cuts"),
    ("2","Ginseng Half Chicken Soup","bangyetang", "8000", "menu_init","A chicken(half) soup with vegetables and sticky rice"),
    ("2","Soft Bean Curd Hot Pot","sundubuttukbaegi", "8000", "menu_init","A spicy(red chili powder) soft tofu soup on top with shrimp"),
    ("2","Spicy Beef Soup","yukgaejang", "8000", "menu_init","A spicy beef soup with green onion on top"),
    ("2","Sundae and Rice Soup","sundaegukbap", "8000", "menu_init","A bone broth with korean pork blood sausage (sundae)"),
    ("2","Offal Soup","naejangtang", "8000", "menu_init","A bone broth with boiled pork offal"),
    ("2","Ox Bone Soup","seolleongtang", "8000", "menu_init","A beef and beef bone soup with egg drops on top"),
    ("2","Mandu Soup","manduguk", "7000", "menu_init","A dumpling soup with egg drops on top"),

    /* 가격 정보 필요 */ 
    ("3","Spicy Seafood Noodle Soup","jjamppong", "????", "wryonggwan-menu1","A noodle with a spicy stir-fried seafood and vegetables (in soup)"),
    ("3","Black Bean Sauce Noodles","jjajangmyeon", "????", "wryonggwan-menu2","Noodles with black bean sauce, onions, and cabbage"),
    ("3","Shrimp Fried Rice","saeubokkeumbap", "????", "wryonggwan-menu3","Stir-fried rice with shrimp, assorted vegetables, and an egg on top."),
    ("3","Deep-fried Pork with Sweet and Sour Sauce","tangsuyuk", "????", "wryonggwan-menu4","A dish where pork is deep-fried with starch, and then a sweet sauce made with carrots and fruit cocktail is poured or dipped according to one's preference."),

    ("4","Fishcake Soup","odengtang", "10000", "menu_init","Fish cake soup with various vegetables."),
    ("4","Corn Cheese","corncheese", "13000", "menu_init","A baked corn with cheese and mayonnaise"),
    ("4","Nagasaki Seafood Noodle Soup","nagasaki jjamppong", "15000", "menu_init","A noodle with a stir-fried seafood and vegetable soup"),
    ("4","Rolled Omelette","gyeranmari", "10000", "menu_init","An egg roll with cheese on top"),
    ("4","Spicy Stir-fried Pork","jeyukbokkeum", "14000", "menu_init","Stir-fried pork with red pepper paste (gochujang) on top of rice"),
    ("4","Seasoned Sea Snail Salad","golbaengi muchim", "13000", "menu_init","A dish made by mixing snails with spicy red pepper paste and various vegetables."),

    /* 가격 정보 필요 */ 
    ("5","Spicy Braised Chicken","dakbokkeumtang", "????", "menu_init","A chicken stew with vegetables, and special sauce (made with spicy red pepper paste (gochujang) and chili powder)"),
    ("5","Stir-fried Tteokbokki and Ramyeon with Spicy Stir-fried Pork","jeyuk rabokki", "????", "menu_init","A dish where pork, vegetables, and a seasoning base of soybean paste and red pepper paste are mixed and cooked with ramyeon(instant noodles). "),
    ("5","Chicken Feet","dakbal", "????", "menu_init","????"),    /* Description 정보 필요 */ 
    ("5","Rolled Omelet","gyeranmari", "????", "menu_init","An egg roll with cheese on top"),

    /* 가격 정보 필요 */ 
    ("6","Soft Bean Curd with Pork Belly","samgyeopsal sundubu", "????", "menu_init","Spicy soft tofu stew (red pepper paste and chili powder) and grilled pork belly on top"),
    ("6","Spicy Smoked Duck","hunjeorijeyuk", "????", "menu_init","A rice bowl steamed duck with red pepper pase"),
    ("6","Pork Stew","jjageuri", "????", "menu_init","A spicy pork stew (red chili paste and chili powder) with vegetables"),
    ("6","Rolled Omelette with Cheese","cheesegyeranmari", "????", "menu_init","An egg roll with added cheese topping."),

    /* 가격 정보 필요 */ 
    ("7","Pork Belly, Pork Shoulder, Grilled Pork Neck, Grilled Blade-end Fatback","samgyeopsal, moksal, hangjeongsal, gabeurisal gui", "????", "menu_init","A dish where various delicious parts of pork are grilled and eaten."),
    ("7","Steamed Eggs","gyeranjjim", "????", "menu_init","A dish where eggs are cooked in a pot."),
    ("7","Cold Buckwheat Noodles, Spicy Buckwheat Noodles","mullaengmyeon, bibimnaengmyeon", "????", "menu_init","Buckwheat noodles, served with a cold and refreshing broth, topped with egg, radish, cucumber, and more. Bibim Noodles are the same noodles, but with a spicy red chili (gochujang)-based sauce and the same toppings, and can be customized with vinegar and mustard."),
    ("7","Noodles","somyeon", "????", "menu_init","A warm noodle soup"),
    ("7","Bibimbap in Large Brass Bowl","yangpun bibimbap", "????", "menu_init","A dish where vegetables like red pepper paste, seaweed, bean sprouts, and rice are mixed and eaten together."),
    ("7","Instant Noodles","ramyeon", "????", "menu_init","Ramyeon (instant noodles) with eggs"),

    ("8","Plain Waffle","plain waffle", "3500", "menu_init","A classic waffle"),
    ("8","Maple Cinnamon Waffle","maplecinnamon waffle", "3700", "menu_init","A waffle topped with maple syrup and cinnamon powder"),
    ("8","Nutella Chocolate Waffle","nutellachoco waffle", "4000", "menu_init","Waffle with Nutella and chocolate syrup"),
    ("8","Caramel Chocolate Waffle","caramelchoco waffle", "4000", "menu_init","Waffle with caramel, chocolate syrup, and almonds"),
    ("8","Cream Cheese Waffle","creamcheese waffle", "4500", "menu_init","Waffle with cream cheese topping"),
    ("8","Ice Cream Waffle","icecream waffle", "5000", "menu_init","Waffle with ice cream topping"),
    ("8","Fresh Cream Waffle","saengcream waffle", "5000", "menu_init","Waffle with whipped cream topping"),
    ("8","Strawberry Smoothie","ttalgi smoothie", "5000", "menu_init","Refreshing strawberry smoothie"),
    ("8","Mango Smoothie","mango smoothie", "5000", "hmenu_init","Tropical mango smoothie"),
    ("8","Blueberry Smoothie","blueberry smoothie", "5000", "menu_init","Berry-filled blueberry smoothie"),

    ("8","Plain Smoothie","plain smoothie", "5000", "menu_init","A plain and simple smoothie"),
    ("8","Rooibos Tea","rooibos", "4200", "menu_init","Herbal tea made from rooibos leaves"),
    ("8","Peppermint Tea","peppermint", "4200", "menu_init","Refreshing peppermint tea"),
    ("8","Chamomile Tea","chamomile", "4200", "menu_init","A soothing chamomile tea"),
    ("8","Lemon Iced Tea","lemon icetea", "4300", "menu_init","Lemon Iced Tea"),
    ("8","Peach Iced Tea","boksunga icetea", "4300", "menu_init","Peach Iced Tea"),
    ("8","Lemon Citrus Tea","lemon yujacha", "4500", "menu_init","Lemon citron tea"),
    ("8","Hibiscus Lemon Tea","hibiscus lemoncha", "5000", "menu_init","Hibiscus lemon tea"),
    ("8","Espresso","espresso", "3500", "menu_init","Espresso"),
    ("8","Americano","americano", "4000", "menu_init","Americano"),

    ("8","Café Latte","cafelatte", "4500", "menu_init","Latte"),
    ("8","Cappuccino","cappuccino", "5000", "menu_init","Cappuccino"),
    ("8","Caffè Mocha","cafe mocha", "5000", "menu_init","Mocha Coffee"),
    ("8","Caramel Macchiato","caramelmacchiato", "5000", "menu_init","Caramel Macchiato"),
    ("8","Vanilla Café Latte","vanillacafelatte", "5000", "menu_init","Vanilla Latte"),
    ("8","Mint Café Latte","mintcafelatte", "5000", "menu_init","Mint Latte"),
    ("8","Green Tea Latte","greentea latte", "4800", "menu_init","A Green Tea Cafe Latte, also known as Matcha Latte"),
    ("8","Five-grain Latte","ogoklatte", "4800", "menu_init","오곡라떼: 5-grain latte.\nThe name ""오곡"" (ogok) refers to a mixture of five different grains as rice, barley, soybeans, millet, and etc. "),
    ("8","Dark Chocolate Latte","darkchocolatte", "4800", "menu_init","Dark chocolate latte"),
    ("8","White Chocolate Latte","whitechocolatte", "4800", "menu_init","White chocolate latte"),

    ("8","Mint Chocolate Latte","mintchocolatte", "4800", "menu_init","Mint Choco Latte"),
    ("8","Sweet Potato Latte","gogumalatte", "4800", "menu_init","Sweet potato latte"),
    ("8","Milk Tea Latte","milktealatte", "4800", "menu_init","Milk tea latte"),
    ("8","Ade","ade", "5000", "menu_init","Refreshing Ade, a delightful beverage"),
    ("8","Fruit Juice","saenggwailjuice", "5000", "menu_init","A freshly squeezed fruit juice"),
    ("8","Banana Shake","bananashake", "5000", "menu_init","Alll-natural banana milkshake, just like homemade"),
    ("8","Oreo Shake","oreoshake", "5500", "menu_init","The classic Oreo milkshake, a timeless treat"),

    ("9","Greek Yogurt with Special Fruit Set","seupesyeol gwail seteu", "6800", "menu_init","Greek Yogurt 81g + 4 Kinds of Fruit + Granola 30g (Choose 1 from 3 options) + Honey Stick\n(Fruit selection varies depending on the season and availability)\nStrawberries, bananas, oranges, watermelon, kiwi, oriental melon, cantaloupe, Shine Muscat, Black Sapphire, grapefruit, etc."),
    ("9","Greek Yogurt with Strawberry and Condensed Milk Set","saengttalgi yeonyu seteu", "6800", "menu_init","Greek Yogurt 81g + Fresh Strawberries + Original Granola 30g + Cheese Cubes + Condensed Milk"),
    ("9","Greek Yogurt with Melon Cheese Cube Set","mellonchijeukyubeu seteu", "6500", "menu_init","Greek Yogurt 81g + Melon Chunks + Original Granola 30g + Coconut Chunks + Cheese Cubes + Condensed Milk"),
    ("9","Greek Yogurt with Grapefruit and Condensed Milk Set","yeonyujamong seteu", "6200", "menu_init","Greek Yogurt 81g + Grapefruit Chunks + Original Granola 30g + Chocolate Chips + Condensed Milk (Honey Stick is available instead of condensed milk)"),
    ("9","Yellow Cheese-flavored Yogurt","hwangchijeu", "4700", "menu_init","Cream Cheese Flavored Yogurt 90g + Cheese Crackers on Top"),
    ("9","Green Tea Chocolate-flavored Yogurt ( aka Supppacho )","nokchachoko ( aka. supppacho )", "4900", "menu_init","Matcha Flavored Greek Yogurt + Chocolate Balls + Coconut Chunks + Unsweetened Cocoa Powder + Chocolate Syrup"),
    ("9","Greek Yogurt with Red Bean and Bean Powder Coated Rice Cake","patjeolmi", "4000", "menu_init","Greek Yogurt 81g + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (7 pieces) + Condensed Milk + Red Bean Paste + Almond Slices"),
    ("9","Greek Yogurt with Bean Powder and Bean Powder Coated Rice Cake","kongjeolmi", "5200", "menu_init","Greek Yogurt 81g + Soybean Powder + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (20 pieces) + Condensed Milk + Allulose sweetener + Almond Slices"),
    ("9","Greek Yogurt with Red Bean Filling Sweet Rice Cake","jjondeukchapssaltteok", "4700", "menu_init","Greek Yogurt 81g + Sweet Crispy Rice Topping + Condensed Milk + Red Bean Paste + Sticky Rice Cake + Mini Yakgwa (Korean honey cookies)"),
    ("9","Greek Yogurt with Fruit and Red Bean Filling Sweet Rice Cake","gwailchapssaltteok", "5900", "menu_init","Greek Yogurt 81g + 2 Kinds of Fruit (Chunky Diet Ball Composition) + Condensed Milk + Red Bean Paste + Sticky Rice Cake"),

    ("9","Greek Yogurt with Sweet Potato Mousse","dalguma", "4700", "menu_init","Greek Yogurt 81g + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (7 pieces) + Sweet Potato Mousse + Almond Slices"),
    ("9","Greek Yogurt with Chunky Diet Bowl ( aka Cheongdabol )","cheongkidaieoteubol ( aka. cheongdabol )", "5900", "menu_init","Greek Yogurt 81g + 2 Kinds of Fruit + Original Granola 30g + Coconut Chunks + Cacao Nibs + Allulose sweetener (The fruit may vary depending on availability and could include options like orange, strawberry, Shine Muscat, Black Sapphire, grapefruit, etc.)"),
    ("9","Greek Yogurt with Banana and Nutella","banana nutella", "5200", "menu_init","Greek Yogurt 81g + Banana Chunks + Nutella Scoop + Condensed Milk + Chocolate Pretzels + Sliced Almond + Chocolate Syrup (Add when ordering)"),
    ("9","Greek Yogurt with Dried Mango","yogeon?!manggo?!", "5800", "menu_init","Greek Yogurt 90g + Dried Mango Chunks + Original Granola 30g + Coconut Chunks"),
    ("9","Greek Yogurt with Chocolate Granola","jjinchoko seteu", "3800", "menu_init","Greek Yogurt 81g + Real Chocolate Granola 30g + Honey Stick"),
    ("9","Greek Yogurt with Strawberry Chocolate Granola","ttalgichoko seteu", "3800", "menu_init","Greek Yogurt 81g + Strawberry Chocolate Granola 30g + Strawberry Jam"),
    ("9","Greek Yogurt with Original Granola, Coconut Chunk and Cacao Nips ","ododok seteu", "4100", "menu_init","Greek Yogurt 81g + Original Granola 30g + Coconut Chunks + Cacao Nibs + Honey Stick"),

    /* 가격 정보 필요 */ 
    ("10","Grilled Salted Chicken","sogeum yeonguso chicken", "????", "menu_init","Grilled chicken seasoned with salt and pepper. You can choose 2 types of sauces from options including red pepper paste, soy sauce, spicy, wasabi mayo, garlic cheese, sweet chili, and mustard. (Option to transform into Ttottia chicken available for an additional 1000 won)"),
    ("10","Soy Sauce Grilled Chicken","ganjang yeonguso chicken", "????", "menu_init","Grilled chicken seasoned with salt and pepper. You can choose 2 types of sauces from options including red pepper paste, soy sauce, spicy, wasabi mayo, garlic cheese, sweet chili, and mustard. (Option to transform into Ttottia chicken available for an additional 1000 won)."),
    ("10","Grilled Salted Chicken with Tortilla","tortilla yeonguso chicken", "????", "menu_init","Grilled chicken seasoned with salt and pepper. You can choose 2 types of sauces from options including red pepper paste, soy sauce, spicy, wasabi mayo, garlic cheese, sweet chili, and mustard. (Option to transform into Ttottia chicken available for an additional 1000 won)."),
    ("10","Kimchi Jjigae with Pork","yeonguso jjigae", "????", "menu_init","A special signature ""Chicken Lab"" Kimchi Stew with a lot of pork. It's a kimchi stew with a generous amount of pork."),
    ("10","Sausage Jjigae","sausage jjigae", "????", "menu_init","A special signature ""Chicken Lab"" Sausage stew is a dish made with plenty of ham. It's a great side dish for drinks, and it includes plenty of ham so that you can eat more."),
    ("10","Chocolate","mintchocolatte", "????", "menu_init","A fish cake soup with lots of extra fish cakes, ensuring you can have more after finishing the first serving"),

    /* 가격 정보 필요 */ 
    ("11","Spicy Stir-fried Chicken with Cheese","cheese dakgalbi", "????", "menu_init","Spicy Stir-fried Chicken with added cheese. Chicken Galbi is a dish made by stir frying chicken marinated in red pepper sauce with cabbage, onions, green onions, and sweet potatoes."),
    ("11","Grilled Cow Lung and Heart","so heopa yeomtong gui", "????", "menu_init","Grilled beef lungs and intestines. Usually dipped in salt and eaten."),
    ("11","Deep-fried Chicken Gizzards","ttongjip twigim", "????", "menu_init","Chicken's nest, where chicken is coated in flour and deep-fried, often with added spicy peppers or scallions."),
    ("11","Pork Stew","dwaejigogi jjageuri", "????", "menu_init","A spicy, slightly salty version of pork and kimchi stew. 'Jjigae' refers to a dish where seasoned pork is cooked with vegetables."),
    ("11","Too-Much Fishcake Soup","too much eomuktang", "????", "menu_init","Stir-fried squid and pork in a red pepper paste-based sauce. 'Bulgogi' refers to thinly sliced meat marinated in sauce and then grilled."),

    ("4","Offal Soup","naejangtang", "8000", "menu_init","A bone broth with boiled beef offal"),
    ("4","Galbi Soup","galbitang", "8000", "menu_init","A clear soup made from beef rib cuts"),
    ("4","Kimchi Jjigae ","kimchi jjigae", "7000", "menu_init","Kimchi Stew with pork. Traditional korean stew with kimchi. "),
    ("4","Fried Chicken with Rice","chicken deopbap", "8000", "menu_init","Stir-fried chicken in special spicy sauce (little spicy) with rice"),
    ("4","Fried Chicken with Cheese over Rice","cheese chicken deopbap", "8000", "menu_init","Stir-fried chicken with cheese in special spicy sauce (little spicy) with rice"),
    ("4","Cheese and Kimchi Fried Rice","cheese kimchibokkeumbap", "8000", "menu_init","Stir-fried rice with kimchi and cheese"),
    ("4","Beef Tartare Bibimbap","yukhoebibimbap", "8000", "menu_init","Beef tartar with a dish where vegetables like red pepper paste, seaweed, bean sprouts, and rice are mixed and eaten together"),
    ("4","Soft Bean Curd Jjigae","sundubujjigae", "7000", "menu_init","Spicy soft tofu stew (red pepper paste and chili powder) with seafood"),
    ("4","Pork Cutlet ","dongaseu", "8000", "menu_init","Breaded and deep-fried pork cutlet, often served with a tangy sauce and shredded cabbage. Served with rice"),
    ("4","Glazed Chicken and Rice","yangnyeomchideopbap", "8000", "menu_init","Glazed stir-fried chicken with rice"),
    ("4","Rose Sauce Braised Chicken","rosejjimdak", "24000", "menu_init","Breased chicken in a creamy rose pasta sauce with glass noodles, flat dumplings, sweet potato, onion and rice cakes. Served usually for 2 and more people."),
    ("4","Spicy Braised Chicken with Grilled Pork","daksambokkeum", "8000", "menu_init","Stir-fried chicken and three-layered pork belly with a savory and slightly sweet sauce.");

    /* 메뉴 사진 모두 들어가면 적용 */
    -- ("1","Stir-fried Squid with Rice","ojingeo deopbap", "7000", "gomone-menu1","Spicy stir-fried Squid with rice"),
    -- ("1","Spicy Stir-fried Pork with Rice","jeyuk deopbap", "7000", "gomone-menu2","Spicy stir-fried pork(red pepper paste - gochujang) with rice"),
    -- ("1","Spicy Noodle Soup", "jangkalguksu","7000", "gomone-menu3","Noodles in anchovy broth mixed with miso and red chili paste (gochujang)"),
    -- ("1","Rice Cake and Mandu Soup","tteong manduguk", "7000", "gomone-menu4","Rice cake and dumpling soup cooked in anchovy broth with seaweed on top"),
    -- ("1","Noodle Soup","kalguksu", "7000", "gomone-menu5","Basic noodle soup prepared with anchovy-based broth"),

    -- ("2","Grilled Pork Set","dwaejigogi gui seteu", "????", "donkobokko-menu1","????"),     /* Description, 가격 정보 필요 */ 
    -- ("2","Galbi Soup","galbitang", "9000", "donkobokko-menu2","A clear soup made from beef rib cuts"),
    -- ("2","Ginseng Half Chicken Soup","bangyetang", "8000", "donkobokko-menu3","A chicken(half) soup with vegetables and sticky rice"),
    -- ("2","Soft Bean Curd Hot Pot","sundubuttukbaegi", "8000", "donkobokko-menu4","A spicy(red chili powder) soft tofu soup on top with shrimp"),
    -- ("2","Spicy Beef Soup","yukgaejang", "8000", "donkobokko-menu5","A spicy beef soup with green onion on top"),
    -- ("2","Sundae and Rice Soup","sundaegukbap", "8000", "donkobokko-menu6","A bone broth with korean pork blood sausage (sundae)"),
    -- ("2","Offal Soup","naejangtang", "8000", "donkobokko-menu7","A bone broth with boiled pork offal"),
    -- ("2","Ox Bone Soup","seolleongtang", "8000", "donkobokko-menu8","A beef and beef bone soup with egg drops on top"),
    -- ("2","Mandu Soup","manduguk", "7000", "donkobokko-menu9","A dumpling soup with egg drops on top"),

    -- /* 가격 정보 필요 */ 
    -- ("3","Spicy Seafood Noodle Soup","jjamppong", "????", "wryonggwan-menu1","A noodle with a spicy stir-fried seafood and vegetables (in soup)"),
    -- ("3","Black Bean Sauce Noodles","jjajangmyeon", "????", "wryonggwan-menu2","Noodles with black bean sauce, onions, and cabbage"),
    -- ("3","Shrimp Fried Rice","saeubokkeumbap", "????", "wryonggwan-menu3","Stir-fried rice with shrimp, assorted vegetables, and an egg on top."),
    -- ("3","Deep-fried Pork with Sweet and Sour Sauce","tangsuyuk", "????", "wryonggwan-menu4","A dish where pork is deep-fried with starch, and then a sweet sauce made with carrots and fruit cocktail is poured or dipped according to one's preference."),

    -- ("4","Fishcake Soup","odengtang", "10000", "gwonsikdang-menu1","Fish cake soup with various vegetables."),
    -- ("4","Corn Cheese","corncheese", "13000", "gwonsikdang-menu2","A baked corn with cheese and mayonnaise"),
    -- ("4","Nagasaki Seafood Noodle Soup","nagasaki jjamppong", "15000", "gwonsikdang-menu3","A noodle with a stir-fried seafood and vegetable soup"),
    -- ("4","Rolled Omelette","gyeranmari", "10000", "gwonsikdang-menu4","An egg roll with cheese on top"),
    -- ("4","Spicy Stir-fried Pork","jeyukbokkeum", "14000", "gwonsikdang-menu5","Stir-fried pork with red pepper paste (gochujang) on top of rice"),
    -- ("4","Seasoned Sea Snail Salad","golbaengi muchim", "13000", "gwonsikdang-menu6","A dish made by mixing snails with spicy red pepper paste and various vegetables."),

    -- /* 가격 정보 필요 */ 
    -- ("5","Spicy Braised Chicken","dakbokkeumtang", "????", "imone-menu1","A chicken stew with vegetables, and special sauce (made with spicy red pepper paste (gochujang) and chili powder)"),
    -- ("5","Stir-fried Tteokbokki and Ramyeon with Spicy Stir-fried Pork","jeyuk rabokki", "????", "imone-menu2","A dish where pork, vegetables, and a seasoning base of soybean paste and red pepper paste are mixed and cooked with ramyeon(instant noodles). "),
    -- ("5","Chicken Feet","dakbal", "????", "imone-menu3","????"),    /* Description 정보 필요 */ 
    -- ("5","Rolled Omelet","gyeranmari", "????", "imone-menu4","An egg roll with cheese on top"),

    -- /* 가격 정보 필요 */ 
    -- ("6","Soft Bean Curd with Pork Belly","samgyeopsal sundubu", "????", "baptongsultong-menu1","Spicy soft tofu stew (red pepper paste and chili powder) and grilled pork belly on top"),
    -- ("6","Spicy Smoked Duck","hunjeorijeyuk", "????", "baptongsultong-menu2","A rice bowl steamed duck with red pepper pase"),
    -- ("6","Pork Stew","jjageuri", "????", "baptongsultong-menu3","A spicy pork stew (red chili paste and chili powder) with vegetables"),
    -- ("6","Rolled Omelette with Cheese","cheesegyeranmari", "????", "baptongsultong-menu4","An egg roll with added cheese topping."),

    -- /* 가격 정보 필요 */ 
    -- ("7","Pork Belly, Pork Shoulder, Grilled Pork Neck, Grilled Blade-end Fatback","samgyeopsal, moksal, hangjeongsal, gabeurisal gui", "????", "samgyeopsalmania-menu1","A dish where various delicious parts of pork are grilled and eaten."),
    -- ("7","Steamed Eggs","gyeranjjim", "????", "samgyeopsalmania-menu2","A dish where eggs are cooked in a pot."),
    -- ("7","Cold Buckwheat Noodles, Spicy Buckwheat Noodles","mullaengmyeon, bibimnaengmyeon", "????", "samgyeopsalmania-menu3","Buckwheat noodles, served with a cold and refreshing broth, topped with egg, radish, cucumber, and more. Bibim Noodles are the same noodles, but with a spicy red chili (gochujang)-based sauce and the same toppings, and can be customized with vinegar and mustard."),
    -- ("7","Noodles","somyeon", "????", "samgyeopsalmania-menu4","A warm noodle soup"),
    -- ("7","Bibimbap in Large Brass Bowl","yangpun bibimbap", "????", "samgyeopsalmania-menu5","A dish where vegetables like red pepper paste, seaweed, bean sprouts, and rice are mixed and eaten together."),
    -- ("7","Instant Noodles","ramyeon", "????", "samgyeopsalmania-menu6","Ramyeon (instant noodles) with eggs"),

    -- ("8","Plain Waffle","plain waffle", "3500", "hesed-menu1","A classic waffle"),
    -- ("8","Maple Cinnamon Waffle","maplecinnamon waffle", "3700", "hesed-menu2","A waffle topped with maple syrup and cinnamon powder"),
    -- ("8","Nutella Chocolate Waffle","nutellachoco waffle", "4000", "hesed-menu3","Waffle with Nutella and chocolate syrup"),
    -- ("8","Caramel Chocolate Waffle","caramelchoco waffle", "4000", "hesed-menu4","Waffle with caramel, chocolate syrup, and almonds"),
    -- ("8","Cream Cheese Waffle","creamcheese waffle", "4500", "hesed-menu5","Waffle with cream cheese topping"),
    -- ("8","Ice Cream Waffle","icecream waffle", "5000", "hesed-menu6","Waffle with ice cream topping"),
    -- ("8","Fresh Cream Waffle","saengcream waffle", "5000", "hesed-menu7","Waffle with whipped cream topping"),
    -- ("8","Strawberry Smoothie","ttalgi smoothie", "5000", "hesed-menu8","Refreshing strawberry smoothie"),
    -- ("8","Mango Smoothie","mango smoothie", "5000", "hesed-menu9","Tropical mango smoothie"),
    -- ("8","Blueberry Smoothie","blueberry smoothie", "5000", "hesed-menu10","Berry-filled blueberry smoothie"),

    -- ("8","Plain Smoothie","plain smoothie", "5000", "hesed-menu11","A plain and simple smoothie"),
    -- ("8","Rooibos Tea","rooibos", "4200", "hesed-menu12","Herbal tea made from rooibos leaves"),
    -- ("8","Peppermint Tea","peppermint", "4200", "hesed-menu13","Refreshing peppermint tea"),
    -- ("8","Chamomile Tea","chamomile", "4200", "hesed-menu14","A soothing chamomile tea"),
    -- ("8","Lemon Iced Tea","lemon icetea", "4300", "hesed-menu15","Lemon Iced Tea"),
    -- ("8","Peach Iced Tea","boksunga icetea", "4300", "hesed-menu16","Peach Iced Tea"),
    -- ("8","Lemon Citrus Tea","lemon yujacha", "4500", "hesed-menu17","Lemon citron tea"),
    -- ("8","Hibiscus Lemon Tea","hibiscus lemoncha", "5000", "hesed-menu18","Hibiscus lemon tea"),
    -- ("8","Espresso","espresso", "3500", "hesed-menu19","Espresso"),
    -- ("8","Americano","americano", "4000", "hesed-menu20","Americano"),

    -- ("8","Café Latte","cafelatte", "4500", "hesed-menu21","Latte"),
    -- ("8","Cappuccino","cappuccino", "5000", "hesed-menu22","Cappuccino"),
    -- ("8","Caffè Mocha","cafe mocha", "5000", "hesed-menu23","Mocha Coffee"),
    -- ("8","Caramel Macchiato","caramelmacchiato", "5000", "hesed-menu24","Caramel Macchiato"),
    -- ("8","Vanilla Café Latte","vanillacafelatte", "5000", "hesed-menu25","Vanilla Latte"),
    -- ("8","Mint Café Latte","mintcafelatte", "5000", "hesed-menu26","Mint Latte"),
    -- ("8","Green Tea Latte","greentea latte", "4800", "hesed-menu27","A Green Tea Cafe Latte, also known as Matcha Latte"),
    -- ("8","Five-grain Latte","ogoklatte", "4800", "hesed-menu28","오곡라떼: 5-grain latte.\nThe name ""오곡"" (ogok) refers to a mixture of five different grains as rice, barley, soybeans, millet, and etc. "),
    -- ("8","Dark Chocolate Latte","darkchocolatte", "4800", "hesed-menu29","Dark chocolate latte"),
    -- ("8","White Chocolate Latte","whitechocolatte", "4800", "hesed-menu30","White chocolate latte"),

    -- ("8","Mint Chocolate Latte","mintchocolatte", "4800", "hesed-menu31","Mint Choco Latte"),
    -- ("8","Sweet Potato Latte","gogumalatte", "4800", "hesed-menu32","Sweet potato latte"),
    -- ("8","Milk Tea Latte","milktealatte", "4800", "hesed-menu33","Milk tea latte"),
    -- ("8","Ade","ade", "5000", "hesed-menu34","Refreshing Ade, a delightful beverage"),
    -- ("8","Fruit Juice","saenggwailjuice", "5000", "hesed-menu35","A freshly squeezed fruit juice"),
    -- ("8","Banana Shake","bananashake", "5000", "hesed-menu36","Alll-natural banana milkshake, just like homemade"),
    -- ("8","Oreo Shake","oreoshake", "5500", "hesed-menu37","The classic Oreo milkshake, a timeless treat"),

    -- ("9","Greek Yogurt with Special Fruit Set","seupesyeol gwail seteu", "6800", "ddoreek-menu1","Greek Yogurt 81g + 4 Kinds of Fruit + Granola 30g (Choose 1 from 3 options) + Honey Stick\n(Fruit selection varies depending on the season and availability)\nStrawberries, bananas, oranges, watermelon, kiwi, oriental melon, cantaloupe, Shine Muscat, Black Sapphire, grapefruit, etc."),
    -- ("9","Greek Yogurt with Strawberry and Condensed Milk Set","saengttalgi yeonyu seteu", "6800", "ddoreek-menu2","Greek Yogurt 81g + Fresh Strawberries + Original Granola 30g + Cheese Cubes + Condensed Milk"),
    -- ("9","Greek Yogurt with Melon Cheese Cube Set","mellonchijeukyubeu seteu", "6500", "ddoreek-menu3","Greek Yogurt 81g + Melon Chunks + Original Granola 30g + Coconut Chunks + Cheese Cubes + Condensed Milk"),
    -- ("9","Greek Yogurt with Grapefruit and Condensed Milk Set","yeonyujamong seteu", "6200", "ddoreek-menu4","Greek Yogurt 81g + Grapefruit Chunks + Original Granola 30g + Chocolate Chips + Condensed Milk (Honey Stick is available instead of condensed milk)"),
    -- ("9","Yellow Cheese-flavored Yogurt","hwangchijeu", "4700", "ddoreek-menu5","Cream Cheese Flavored Yogurt 90g + Cheese Crackers on Top"),
    -- ("9","Green Tea Chocolate-flavored Yogurt ( aka Supppacho )","nokchachoko ( aka. supppacho )", "4900", "ddoreek-menu6","Matcha Flavored Greek Yogurt + Chocolate Balls + Coconut Chunks + Unsweetened Cocoa Powder + Chocolate Syrup"),
    -- ("9","Greek Yogurt with Red Bean and Bean Powder Coated Rice Cake","patjeolmi", "4000", "ddoreek-menu7","Greek Yogurt 81g + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (7 pieces) + Condensed Milk + Red Bean Paste + Almond Slices"),
    -- ("9","Greek Yogurt with Bean Powder and Bean Powder Coated Rice Cake","kongjeolmi", "5200", "ddoreek-menu8","Greek Yogurt 81g + Soybean Powder + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (20 pieces) + Condensed Milk + Allulose sweetener + Almond Slices"),
    -- ("9","Greek Yogurt with Red Bean Filling Sweet Rice Cake","jjondeukchapssaltteok", "4700", "ddoreek-menu9","Greek Yogurt 81g + Sweet Crispy Rice Topping + Condensed Milk + Red Bean Paste + Sticky Rice Cake + Mini Yakgwa (Korean honey cookies)"),
    -- ("9","Greek Yogurt with Fruit and Red Bean Filling Sweet Rice Cake","gwailchapssaltteok", "5900", "ddoreek-menu10","Greek Yogurt 81g + 2 Kinds of Fruit (Chunky Diet Ball Composition) + Condensed Milk + Red Bean Paste + Sticky Rice Cake"),

    -- ("9","Greek Yogurt with Sweet Potato Mousse","dalguma", "4700", "ddoreek-menu11","Greek Yogurt 81g + Sweet Crispy Rice Topping + Injeolmi Rice Cakes (7 pieces) + Sweet Potato Mousse + Almond Slices"),
    -- ("9","Greek Yogurt with Chunky Diet Bowl ( aka Cheongdabol )","cheongkidaieoteubol ( aka. cheongdabol )", "5900", "ddoreek-menu12","Greek Yogurt 81g + 2 Kinds of Fruit + Original Granola 30g + Coconut Chunks + Cacao Nibs + Allulose sweetener (The fruit may vary depending on availability and could include options like orange, strawberry, Shine Muscat, Black Sapphire, grapefruit, etc.)"),
    -- ("9","Greek Yogurt with Banana and Nutella","banana nutella", "5200", "ddoreek-menu13","Greek Yogurt 81g + Banana Chunks + Nutella Scoop + Condensed Milk + Chocolate Pretzels + Sliced Almond + Chocolate Syrup (Add when ordering)"),
    -- ("9","Greek Yogurt with Dried Mango","yogeon?!manggo?!", "5800", "ddoreek-menu14","Greek Yogurt 90g + Dried Mango Chunks + Original Granola 30g + Coconut Chunks"),
    -- ("9","Greek Yogurt with Chocolate Granola","jjinchoko seteu", "3800", "ddoreek-menu15","Greek Yogurt 81g + Real Chocolate Granola 30g + Honey Stick"),
    -- ("9","Greek Yogurt with Strawberry Chocolate Granola","ttalgichoko seteu", "3800", "ddoreek-menu16","Greek Yogurt 81g + Strawberry Chocolate Granola 30g + Strawberry Jam"),
    -- ("9","Greek Yogurt with Original Granola, Coconut Chunk and Cacao Nips ","ododok seteu", "4100", "ddoreek-menu17","Greek Yogurt 81g + Original Granola 30g + Coconut Chunks + Cacao Nibs + Honey Stick"),

    -- /* 가격 정보 필요 */ 
    -- ("10","Grilled Salted Chicken","sogeum yeonguso chicken", "????", "chickenlab-menu1","Grilled chicken seasoned with salt and pepper. You can choose 2 types of sauces from options including red pepper paste, soy sauce, spicy, wasabi mayo, garlic cheese, sweet chili, and mustard. (Option to transform into Ttottia chicken available for an additional 1000 won)"),
    -- ("10","Soy Sauce Grilled Chicken","ganjang yeonguso chicken", "????", "chickenlab-menu2","Grilled chicken seasoned with salt and pepper. You can choose 2 types of sauces from options including red pepper paste, soy sauce, spicy, wasabi mayo, garlic cheese, sweet chili, and mustard. (Option to transform into Ttottia chicken available for an additional 1000 won)."),
    -- ("10","Grilled Salted Chicken with Tortilla","tortilla yeonguso chicken", "????", "chickenlab-menu3","Grilled chicken seasoned with salt and pepper. You can choose 2 types of sauces from options including red pepper paste, soy sauce, spicy, wasabi mayo, garlic cheese, sweet chili, and mustard. (Option to transform into Ttottia chicken available for an additional 1000 won)."),
    -- ("10","Kimchi Jjigae with Pork","yeonguso jjigae", "????", "chickenlab-menu4","A special signature ""Chicken Lab"" Kimchi Stew with a lot of pork. It's a kimchi stew with a generous amount of pork."),
    -- ("10","Sausage Jjigae","sausage jjigae", "????", "chickenlab-menu5","A special signature ""Chicken Lab"" Sausage stew is a dish made with plenty of ham. It's a great side dish for drinks, and it includes plenty of ham so that you can eat more."),
    -- ("10","Chocolate","mintchocolatte", "????", "chickenlab-menu6","A fish cake soup with lots of extra fish cakes, ensuring you can have more after finishing the first serving"),

    -- /* 가격 정보 필요 */ 
    -- ("11","Spicy Stir-fried Chicken with Cheese","cheese dakgalbi", "????", "kkokkomeokko-menu1","Spicy Stir-fried Chicken with added cheese. Chicken Galbi is a dish made by stir frying chicken marinated in red pepper sauce with cabbage, onions, green onions, and sweet potatoes."),
    -- ("11","Grilled Cow Lung and Heart","so heopa yeomtong gui", "????", "kkokkomeokko-menu2","Grilled beef lungs and intestines. Usually dipped in salt and eaten."),
    -- ("11","Deep-fried Chicken Gizzards","ttongjip twigim", "????", "kkokkomeokko-menu3","Chicken's nest, where chicken is coated in flour and deep-fried, often with added spicy peppers or scallions."),
    -- ("11","Pork Stew","dwaejigogi jjageuri", "????", "kkokkomeokko-menu4","A spicy, slightly salty version of pork and kimchi stew. 'Jjigae' refers to a dish where seasoned pork is cooked with vegetables."),
    -- ("11","Too-Much Fishcake Soup","too much eomuktang", "????", "kkokkomeokko-menu5","Stir-fried squid and pork in a red pepper paste-based sauce. 'Bulgogi' refers to thinly sliced meat marinated in sauce and then grilled."),

    -- ("4","Offal Soup","naejangtang", "8000", "gwonsikdang-menu7","A bone broth with boiled beef offal"),
    -- ("4","Galbi Soup","galbitang", "8000", "gwonsikdang-menu8","A clear soup made from beef rib cuts"),
    -- ("4","Kimchi Jjigae ","kimchi jjigae", "7000", "gwonsikdang-menu9","Kimchi Stew with pork. Traditional korean stew with kimchi. "),
    -- ("4","Fried Chicken with Rice","chicken deopbap", "8000", "gwonsikdang-menu10","Stir-fried chicken in special spicy sauce (little spicy) with rice"),
    -- ("4","Fried Chicken with Cheese over Rice","cheese chicken deopbap", "8000", "gwonsikdang-menu11","Stir-fried chicken with cheese in special spicy sauce (little spicy) with rice"),
    -- ("4","Cheese and Kimchi Fried Rice","cheese kimchibokkeumbap", "8000", "gwonsikdang-menu12","Stir-fried rice with kimchi and cheese"),
    -- ("4","Beef Tartare Bibimbap","yukhoebibimbap", "8000", "gwonsikdang-menu13","Beef tartar with a dish where vegetables like red pepper paste, seaweed, bean sprouts, and rice are mixed and eaten together"),
    -- ("4","Soft Bean Curd Jjigae","sundubujjigae", "7000", "gwonsikdang-menu14","Spicy soft tofu stew (red pepper paste and chili powder) with seafood"),
    -- ("4","Pork Cutlet ","dongaseu", "8000", "gwonsikdang-menu15","Breaded and deep-fried pork cutlet, often served with a tangy sauce and shredded cabbage. Served with rice"),
    -- ("4","Glazed Chicken and Rice","yangnyeomchideopbap", "8000", "gwonsikdang-menu16","Glazed stir-fried chicken with rice"),
    -- ("4","Rose Sauce Braised Chicken","rosejjimdak", "24000", "gwonsikdang-menu17","Breased chicken in a creamy rose pasta sauce with glass noodles, flat dumplings, sweet potato, onion and rice cakes. Served usually for 2 and more people."),
    -- ("4","Spicy Braised Chicken with Grilled Pork","daksambokkeum", "8000", "gwonsikdang-menu18","Stir-fried chicken and three-layered pork belly with a savory and slightly sweet sauce.");

/* 더미 데이터 */ 
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
    (1, 15), (1, 18), (1, 19),
    (2, 14), (2, 15),
    (3, 15), (3, 23),
    (4, 6), (4, 14), (4, 23),
    (5, 15), (5, 23),

    (6, 14),
    (7, 2), (7, 6), (7, 15),
    (8, 4), (8, 15),
    (9, 2), (9, 6), (9, 15), (9, 17),
    (10, 2), (10, 6), (10, 15),
    (11, 14), (11, 15),
    (12, 14), (12, 15),
    (13, 2), (13, 6), (13, 15),
    (14, 2), (14, 14), (14, 15), (14, 23),  /* 첫번째 알러지 소고기 들어가는지 확인 필요 */ 

    (15, 9), (15, 17), (15, 18), (15, 19), (15, 23),
    (16, 6), (16, 14), (16, 15), (16, 19), (16, 23),
    (17, 6), (17, 15), (17, 17), 
    (18, 14), (18, 18), 

    (19, 18),
    /* 20번 메뉴 알러지 유발 성분 없음 */ 
    (21, 9), (21, 16), (21, 19),
    (22, 6),
    (23, 14), (23, 18),
    /* 24번 메뉴 알러지 유발 성분 없음 */

    (25, 4), (25, 15), (25, 18),
    (26, 14), (26, 15), (26, 23),
    (27, 4), (27, 18),
    (28, 6),

    (29, 14),
    (30, 15), (30, 18),
    (31, 14), (31, 15),
    (32, 6), (32, 15),

    (33, 14),
    (34, 6),
    (35, 6), (35, 20),
    (36, 23),
    /* 37번 메뉴 알러지 유발 성분 없음, 6번 달걀 알러지 확인 필요 */
    (38, 6), (38, 23),

    (39, 6), (39, 8), (39, 23),
    (40, 6), (40, 8), (40, 23),
    (41, 6), (41, 8), (41, 23),
    (42, 6), (42, 8), (42, 23), (42, 24),
    (43, 6), (43, 8), (43, 23),
    (44, 6), (44, 8), (44, 23),
    (45, 6), (45, 8), (45, 23),
    (46, 8),
    (47, 8),
    (48, 8),

    (49, 8),
    /* 50번 메뉴 알러지 유발 성분 없음 */
    /* 51번 메뉴 알러지 유발 성분 없음 */
    /* 52번 메뉴 알러지 유발 성분 없음 */
    /* 53번 메뉴 알러지 유발 성분 없음 */
    (54, 11),
    /* 55번 메뉴 알러지 유발 성분 없음 */
    /* 56번 메뉴 알러지 유발 성분 없음 */
    /* 57번 메뉴 알러지 유발 성분 없음 */
    /* 58번 메뉴 알러지 유발 성분 없음 */

    (59, 8),
    (60, 8),
    (61, 8),
    (62, 8),
    (63, 8),
    (64, 8),
    (65, 8),
    (66, 8),
    (67, 8),
    (68, 8),

    (69, 8),
    (70, 8),
    (71, 8),
    /* 72번 메뉴 알러지 유발 성분 없음 */
    /* 73번 메뉴 알러지 유발 성분 없음 */
    (74, 8),
    (75, 8),

    (76, 8), (76, 24),
    (77, 8), (77, 24),
    (78, 8), (78, 24),
    (79, 8), (79, 24),
    (80, 8),
    (81, 8),
    (82, 8), (82, 24),
    (83, 8), (83, 24),
    (84, 8),
    (85, 8),

    (86, 8), (86, 24),
    (87, 8), (87, 24),
    (88, 8), (88, 24),
    (89, 8), (89, 24),
    (90, 8), (90, 24),
    (91, 8), (91, 24),
    (92, 8), (92, 24),

    (93, 4),
    (94, 4), (94, 18),
    (95, 4), (95, 23),
    (96, 14),
    (97, 14),
    (98, 18),

    (99, 4),
    (100, 2),
    (101, 4), (101, 24),
    (102, 14),
    (103, 14), (103, 18), (103, 19),

    (104, 2),
    (105, 2),
    (106, 14),
    (107, 4), (107, 15),
    (108, 4), (108, 15),
    (109, 14), (109, 15),
    (110, 2), (110, 6),
    /* 111번 메뉴 알러지 유발 성분 없음 */
    (112, 14),
    (113, 4), (113, 15),
    (114, 4), (114, 8), (114, 14),
    (115, 4), (115, 14);



/* 더미 데이터 */ 
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