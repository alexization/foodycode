var express = require("express");
var router = express.Router();

/* GET users listing. */
router.get("/", function (req, res, next) {
  console.log("hello world");
  res.send("respond with a resource hello");
});

module.exports = router;
