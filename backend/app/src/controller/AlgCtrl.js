const AlgStorage = require("../models/UserAlgStorage");
const UserStorage = require("../models/UserStorage");

class AlgCtrl {
  static async sendUserAlgs(req, res) {
    const data = {};
    if (req.session.userid) {
      const arr_useralgs = await AlgStorage.getUsersAlgName(req.session.userid);
      const { name } = await UserStorage.getUsersName(req.session.userid);
      const useralgs_id = await AlgStorage.getUsersAlgid(req.session.userid);

      const arr = [];
      for (let i = 0; i < arr_useralgs.length; i++) {
        arr.push(arr_useralgs[i].algname);
      }

      const arr_id = [];
      for (let i = 0; i < useralgs_id.length; i++) {
        arr_id.push(useralgs_id[i].algid);
      }
      data.uname = name;
      data.useralgs = arr;
      data.algid = arr_id;
    }

    res.send(data);
  }
}

module.exports = AlgCtrl;
