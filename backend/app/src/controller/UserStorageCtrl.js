const UserStorage = require('../models/UserStorage');

class UserStorageCtrl {
  static async getUserlogined(req, res) {
    if (!req.session.userid) return res.json({ is_logined: false });
    else return res.json({ is_logined: true });
  }
}
module.exports = UserStorageCtrl;
