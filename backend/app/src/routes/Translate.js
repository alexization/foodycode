var express = require('express');
var router = express.Router();

const TransCtrl = require('../controller/TransCtrl');

router.get('/', TransCtrl.TranslateMenu);

module.exports = router;
