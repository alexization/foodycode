const UserStorage = require("../../models/UserStorage");
const AlgStorage = require("../../models/AlgStorage");


class MenuCtrl {

  static async show(req, res) {
    const logined = req.session.is_logined;
    //console.log(user);
    if (logined) {
    new UserStorage();
    const userId = req.session.userid;
    const arr = await AlgStorage.getUsersAlgName(userId);

    // const algname1 = arr[0].algname;
    // const algname2 = arr[1].algname;
    // const algname3 = arr[2].algname;
    
      res.render("home/show",{arr});
    } else {
      res.redirect("/login");
    }
  }

}

module.exports = MenuCtrl;
