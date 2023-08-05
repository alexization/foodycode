var express = require("express");
var router = express.Router();


const AlgCtrl = require("../controller/AlgCtrl");

/* GET users listing. */
router.get("/", AlgCtrl.sendUserAlgs);


// router.post("/signup", UserCtrl.processLogin);



module.exports = router;
