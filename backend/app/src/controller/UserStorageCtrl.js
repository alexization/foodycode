const UserStorage = require('../models/UserStorage');

class UserStorageCtrl {
  static async getUserInfo(req, res) {
    if (req.session.userid) {
      return res.json({ is_logined: false, msg: 'no logined' });
    }

    const uid = req.session.userid;
    const response = await UserStorage.getUsersInfo(uid);
    console.log(response);
    return res.json(response);
  }
}
module.exports = UserStorageCtrl;
