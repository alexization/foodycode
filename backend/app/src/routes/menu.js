var express = require('express');
var router = express.Router();

const MenuCtrl = require('../controller/MenuCtrl');

router.get('/:rest_name', MenuCtrl.sendMenuInfo);

router.post('/:rest_id',MenuCtrl.addMenu);

module.exports = router;
