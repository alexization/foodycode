const AlgStorage = require("../models/AlgStorage");


class AlgCtrl {


  static async sendUserAlgs(req, res) {
    const arr = await AlgStorage.getUsersAlgName("lls");
    res.send(arr);

  }
}

module.exports = AlgCtrl;
