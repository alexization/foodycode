const mysql = require("mysql2");

const db = mysql.createConnection({
  host: "localhost",
  user: "root", // mysql에 아이디를 넣는다.
  password: "back0106", // mysql의 비밀번호를 넣는다.
  database: "frdg", //위에서 만든 데이터베이스의 이름을 넣는다.
});

db.connect();

// db.query("SELECT * FROM users",(err,data)=>{
//     if(err)throw err;
//     console.log("====from start db.js====");
//     console.log(data);
//     console.log("====from start db.js====");
// });

module.exports = db;
