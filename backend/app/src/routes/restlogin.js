"use strict";

let express = require("express");
let router = express.Router();

const RestCtrl= require("../controller/RestCtrl");

router.post('/',RestCtrl.processLogin);

module.exports = router;