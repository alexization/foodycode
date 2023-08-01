const RestStorage = require("../models/RestStorage");

class RestCtrl {

    static async sendRestNamePic(req,res){
        const arr = await RestStorage.getRestNamePic();
        for (let i =0; i<arr.length();i++){
        console.log(arr[i]);}
        res.send("root");
    }

}

module.exports = RestCtrl;