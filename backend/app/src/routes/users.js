var express = require("express");
var router = express.Router();

/* GET users listing. */
router.get("/", function (req, res, next) {
  console.log("hello world");
  res.send("respond with a resource hello");
});


/*b가 잘 분기되는지 확인을 하는중*/
module.exports = router;
