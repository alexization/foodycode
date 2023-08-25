const UserAlg = require("../models/UserAlg");

class UserAlgCtrl{

    static async processEditAlg(req,res){
    console.log("hello im uac");
    
        console.log(req.body);
        console.log(req.session.userid)
        const userAlg = new UserAlg(req.body);
        
      
        const response = await userAlg.edit_alg(req.session.userid);
        console.log("return response");
        console.log(response);
        console.log(response.success);
        return res.json(response);
          
        

   

    }
}

module.exports = UserAlgCtrl;