var express = require("express");
var router = express.Router();

const RestCtrl= require("../controller/MenuCtrl");

router.get("/", RestCtrl.sendRestNamePic);

module.exports = router;