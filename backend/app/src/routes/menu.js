var express = require('express');
var router = express.Router();

const MenuCtrl = require('../controller/MenuCtrl');

router.get('/:rest_name', MenuCtrl.sendMenuInfo);

router.put('/',MenuCtrl.addMenu);

module.exports = router;
