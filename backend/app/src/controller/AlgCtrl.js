const AlgStorage = require("../models/AlgStorage");


class AlgCtrl {


  static async sendUserAlgs(req, res) {
    const arr = await AlgStorage.getUsersAlgName("lls");
    res.send(arr);
    // const logined = req.session.is_logined;
    // if (logined) {
    // new UserStorage();
    // const userId = req.session.userid;
    // const arr = await AlgStorage.getUsersAlgName(userId);

    //   res.render("home/show",{arr});
    // } else {
    //   res.redirect("/login");
    // }
  }
}

module.exports = AlgCtrl;
