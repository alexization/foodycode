const MenuStorage =require("../models/MenuStroage");

class MenuCtrl {

  static async sendMenuInfo(req, res) {
    const arr = await MenuStorage.getMenuInfo();
    console.log(arr);
    res.send(arr);
  }

}

module.exports = MenuCtrl;
