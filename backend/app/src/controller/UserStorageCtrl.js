class UserStorageCtrl {
  static async getUserInfo(req, res) {
    const uid = req.session.userid;
    const response = await user.getUserInfo(uid);
    console.log(response);
    return res.json(response);
  }
}
module.exports = UserStorageCtrl;
