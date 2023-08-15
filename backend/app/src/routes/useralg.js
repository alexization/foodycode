var express = require("express");
var router = express.Router();


const AlgCtrl = require("../controller/AlgCtrl");

router.get("/",AlgCtrl.sendUserAlgs);

module.exports = router;