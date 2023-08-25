const UserAlg = require("../models/UserAlg");
const UserAlg = require("../models/UserAlg");

class UserAlgCtrl{

    static async processEditAlg(req,res){
        console.log(req.body)
        const UserAlg = new UserAlg(req.body);
        
    }
}