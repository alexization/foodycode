const MenuStorage =require("../models/MenuStroage");
const AlgStorage = require("../models/AlgStorage");

class MenuCtrl {

  static async sendMenuInfo(req, res) {
    const arr = await MenuStorage.getMenuInfo();
    console.log(arr);
    res.send(arr);
  }


  static async sendMenuAlgInfo(req, res) {
    const arr = await AlgStorage.getMenuAlgInfo();
    console.log(arr);
    res.send(arr);
  }
}

module.exports = MenuCtrl;
