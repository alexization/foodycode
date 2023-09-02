const AlgStorage = require("../models/UserAlgStorage");
const UserStorage = require("../models/UserStorage");

class AlgCtrl {
  static async sendUserAlgs(req, res) {
    const data = {};
    if (req.session.userid) {
      const arr_useralgs = await AlgStorage.getUsersAlgName(req.session.userid);
      const { name } = await UserStorage.getUsersName(req.session.userid);
      const arr = [];
      const arrId = [];
      for (let i = 0; i < arr_useralgs.algname.length; i++) {
        arr.push(arr_useralgs.algname[i].algname);
      }
      for (let i = 0; i < arr_useralgs.algid.length; i++) {
        arrId.push(arr_useralgs.algid[i].algid);
      }
      console.log(arr_useralgs);

      data.uname = name;
      data.useralgs = arr;
      data.userId = arrId;
    }
    console.log(data);
    res.send(data);
  }
}

module.exports = AlgCtrl;
