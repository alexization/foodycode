const User = require('../models/User');

class UserCtrl {
  static async processLogin(req, res) {
    console.log(req.body);
    const user = new User(req.body);
    const response = await user.login();

    // 로그인 성공시 세션 생성
    if (response.success) {
      req.session.is_logined = true;
      req.session.userid = req.body.uid;
    }

    return res.json(response);
  }

  static async processRegister(req, res) {
    const user = new User(req.body);
    const response = await user.register();
    console.log(response);
    return res.json(response);
  }

  static async confirmID(req, res) {
    const user = new User(req.body);
    const response = await user.ID();
    console.log(response);
    return res.json(response);
  }

  static processLogout(req, res) {
    const session = req.session;
    if (session.is_logined) {
      session.destroy();
      return res.json({ success: true, msg: 'logout success' });
    } else return res.json({ success: false, msg: 'Not logined' });
  }
}

module.exports = UserCtrl;
