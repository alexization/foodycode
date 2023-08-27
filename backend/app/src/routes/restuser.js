var express = require("express");
var router = express.Router();

const RestCtrl = require("../controller/RestCtrl");

router.get("/",RestCtrl.sendMyRestInfo);

module.exports=router;