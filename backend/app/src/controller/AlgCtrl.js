const AlgStorage = require("../models/UserAlgStorage");
const UserStorage = require("../models/UserStorage");

class AlgCtrl {
  static async sendUserAlgs(req, res) {
    const data = {};
    if (req.session.userid) {
      const arr_useralgs = await AlgStorage.getUsersAlgName(req.session.userid);
      const { name } = await UserStorage.getUsersName(req.session.userid);

      const arr = [];
      for (let i = 0; i < arr_useralgs.length; i++) {
        arr.push(arr_useralgs[i].algname);
      }

      data.uname = name;
      data.useralgs = arr;
    }

    console.log(data);
    res.send(data);
  }
}

module.exports = AlgCtrl;
