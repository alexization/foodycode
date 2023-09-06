var express = require("express");
var router = express.Router();

const IgdCtrl = require("../controller/IgdCtrl");

router.get('/:menu_name',IgdCtrl.searchIgdNames);

module.exports = router;