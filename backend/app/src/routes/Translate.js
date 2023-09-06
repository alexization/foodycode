var express = require('express');
var router = express.router();

const TransCtrl = require('../controller/TransCtrl');

router.get('/', TransCtrl.TranslateMenu);

module.exports = router;
