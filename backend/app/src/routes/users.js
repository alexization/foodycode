var express = require("express");
var router = express.Router();


const UserCtrl = require("../controller/UserCtrl");

/* GET users listing. */
// router.get("/", function (req, res, next) {
//   console.log("hello world");
// });


router.post("/", UserCtrl.processLogin);


// router.post("/signup", UserCtrl.processLogin);



module.exports = router;
