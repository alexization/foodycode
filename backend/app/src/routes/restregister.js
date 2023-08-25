"use strict";

let express = require("express");
let router = express.Router();

const RestCtrl= require("../controller/RestCtrl");

router.post('/',RestCtrl.processRegister);

module.exports = router;