const AlgStorage = require("../models/AlgStorage");
const UserStorage = require("../models/UserStorage");

class AlgCtrl {


  static async sendUserAlgs(req, res) {
    const data ={};
    if(req.session.userid){
    data.useralgs = await AlgStorage.getUsersAlgName(req.session.userid);
    data.uname = await UserStorage.getUsersName(req.session.userid);
    
    }
    
    console.log(data);
    res.send(data);

  }
}

module.exports = AlgCtrl;
