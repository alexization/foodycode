var express = require('express');
var router = express.Router();

const MenuCtrl = require('../controller/MenuCtrl');
router.get('/:menu_id', MenuCtrl.sendMenuDetail);

module.exports = router;
