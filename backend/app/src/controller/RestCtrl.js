const RestStorage = require("../models/RestStorage");


class RestCtrl {

    static async sendRestNamePic(req,res){
        const arr = await RestStorage.getRestNamePic();
        res.send(arr);
    }

}

module.exports = RestCtrl;