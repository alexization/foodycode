var express = require("express");
var router = express.Router();


const AlgCtrl = require("../controller/AlgCtrl");

const UserAlgCtrl = require("../controller/UserAlgCtrl");

router.get("/",AlgCtrl.sendUserAlgs);

router.put("/",UserAlgCtrl.processEditAlg);

module.exports = router;