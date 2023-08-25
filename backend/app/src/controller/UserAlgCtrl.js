const UserAlg = require("../models/UserAlg");

class UserAlgCtrl{

    static async processEditAlg(req,res){
    
    
        console.log(req.body);
        const userAlg = new UserAlg(req.body);
        
        if (req.session.userid) {
            try {
                const response = await userAlg.edit_alg(req.session.userid);
                return response;
            } catch (err) {
                const er = { success: false, msg: err };
                console.log(typeof er.msg);
                return er;
            }  
        }
        else{
            const er = { success: false, msg: "알수없는 오류" };
            return er;
        }

   

    }
}