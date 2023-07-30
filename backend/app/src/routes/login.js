var express = require("express");
var router = express.Router();
var users = require("../data/users.json");

const UserCtrl = require("../controller/UserCtrl");

router.get("/", function (req, res, next) {
  res.send(users);
});

router.post("/", UserCtrl.processLogin);


// //register경로로 포스트요청이 오면 실행
// router.post("/register",UserCtrl.processRegister);


module.exports = router;

//여기에 users관련된거를 다 넣어야할듯 파일이름도 바꾸고 그리고 로그인 라우터 따로 만들어야할듯