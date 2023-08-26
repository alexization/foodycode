const RestStorage = require('../models/RestStorage');
const Rest = require("../models/Rest");


class RestCtrl {
  static async sendRestNamePic(req, res) {
    const arr = await RestStorage.getRestNamePic();
    res.send(arr);
  }

  static async processLogin(req,res){
    console.log(req.body);
    const user = new Rest(req.body);

    const response = await user.login();


    if(response.success){
      req.session.is_logined = true;
      req.session.rest_uid = req.body.uid;
    }

    return res.json(response);
  }

  static async processRegister(req,res){
    const user = new Rest(req.body);
    const response = await user.register();

    return res.json(response);
  }

  

}

module.exports = RestCtrl;
