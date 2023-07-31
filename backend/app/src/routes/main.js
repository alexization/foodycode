var express = require("express");
var router = express.Router();
var users = [
  {
    image: "Hot-Pot-Stew",
    title: "Hot Pot Stew Restaurant",
  },
  {
    image: "Korean-Barbeque",
    title: "Korean Barbeque Restaurant",
  },
  {
    image: "Korean-Barbeque",
    title: "Korean Barbeque Restaurant",
  },
];

router.get("/", function (req, res, next) {
  res.send(users);
});

module.exports = router;

//여기에 users관련된거를 다 넣어야할듯 파일이름도 바꾸고 그리고 로그인 라우터 따로 만들어야할듯
