var express = require("express");
var router = express.Router();

const MenuCtrl = require("../controller/MenuCtrl");

router.get("/", MenuCtrl.sendMenuAlgInfo);

module.exports = router;