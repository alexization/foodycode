const UserStorage = require("../models/UserStorage");
const AlgStorage = require("../models/AlgStorage");


class MenuCtrl {

  static async sendMenu(req, res) {
    const logined = req.session.is_logined;
    if (logined) {
    new UserStorage();
    const userId = req.session.userid;
    const arr = await AlgStorage.getUsersAlgName(userId);

      res.render("home/show",{arr});
    } else {
      res.redirect("/login");
    }
  }

  static async show(req, res) {
    const logined = req.session.is_logined;
    if (logined) {
    new UserStorage();
    const userId = req.session.userid;
    const arr = await AlgStorage.getUsersAlgName(userId);

      res.render("home/show",{arr});
    } else {
      res.redirect("/login");
    }
  }
}

module.exports = MenuCtrl;
