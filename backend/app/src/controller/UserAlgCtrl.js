const UserAlg = require("../models/UserAlg");

class UserAlgCtrl {
  static async processEditAlg(req, res) {
    const userAlg = new UserAlg(req.body);

    const response = await userAlg.edit_alg(req.session.userid);
    return res.json(response);
  }
}

module.exports = UserAlgCtrl;
