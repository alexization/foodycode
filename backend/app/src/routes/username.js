var express = require('express');
var router = express.Router();

const UserCtrl = require('../controller/UserCtrl');

/* GET users listing. */
// router.get('/', function (req, res, next) {
//   console.log('hello world');
// });

router.put('/', UserCtrl.processEdit);

module.exports = router;
