var express = require("express");
var router = express.Router();
var users = require("../data/users.json");

const UserCtrl = require("../controller/UserCtrl");

router.get("/", function (req, res, next) {
  res.send(users);
});

router.post("/", UserCtrl.processLogin);


module.exports = router;
