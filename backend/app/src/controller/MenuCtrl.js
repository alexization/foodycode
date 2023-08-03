const MenuStorage =require("../models/MenuStroage");

class MenuCtrl {

  static async sendMenuInfo(req, res) {
    const arr = await MenuStorage.getMenuInfo();
    res.send(arr);
  }

}

module.exports = MenuCtrl;
