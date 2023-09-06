const IgdStorage = require("../models/IgdStroage");


class IgdCtrl {
    static async searchIgdNames(req,res){

       const key = req.params.menu_name;
       const response = await IgdStorage.getIgdNamesContain(key);
       
       return res.send(response);
    }
}

module.exports = IgdCtrl;