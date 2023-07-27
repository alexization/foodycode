var express = require("express");
var router = express.Router();
var users = require("../data/users.json");

router.get("/", function (req, res, next) {
  res.send(users);
});

router.post("/", function (req, res, next) {
  console.log(req.body);
});
module.exports = router;
