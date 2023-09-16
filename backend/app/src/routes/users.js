var express = require('express');
var router = express.Router();

const UserStorageCtrl = require('../controller/UserStorageCtrl');

/* GET users listing. */
// router.get('/', function (req, res, next) {
//   console.log('hello world');
// });

router.get('/', UserStorageCtrl.getUserlogined);

// router.post("/signup", UserCtrl.processLogin);

module.exports = router;
