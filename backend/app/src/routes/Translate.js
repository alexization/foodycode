var express = require('express');
var router = express.Router();

const TransCtrl = require('../controller/TransCtrl');

router.get('/:menu_name', TransCtrl.TranslateMenu);

module.exports = router;
