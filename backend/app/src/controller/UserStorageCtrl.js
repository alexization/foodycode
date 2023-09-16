const UserStorage = require('../models/UserStorage');

class UserStorageCtrl {
  static async getUserInfo(req, res) {
    const uid = req.session.userid;
    const response = await UserStorage.getUserInfo(uid);
    console.log(response);
    return res.json(response);
  }
}
module.exports = UserStorageCtrl;
