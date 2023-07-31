"use strict";

const db = require('../config/db');

//class명은 파일이름과 동일한게 좋음
class AlgStorage{
    
    

    static getUsersAlgName(id){
        return new Promise((resolve,reject) => {
            const query = "select allergies.algname FROM users right join userAlgs ON users.id = userAlgs.uid inner join allergies ON userAlgs.algid = allergies.id where users.uid = ?;";
            db.query(query,[id],(err,data)=>{
                if(err) throw reject(`${err}`);
                //console.log(data[0]);
                resolve(data);
            });
        });
    }




}
module.exports = AlgStorage;


/*b가 잘 분기되는지 확인을 하는중*/
/*b가 잘 분기되는지 확인을 하는중*/
/*b가 잘 분기되는지 확인을 하는중*/
/*b가 잘 분기되는지 확인을 하는중*/
/*b가 잘 분기되는지 확인을 하는중*/
/*b가 잘 분기되는지 확인을 하는중*/

/*b가 잘 분기되는지 확인을 하는중*/

/*b가 잘 분기되는지 확인을 하는중*/
/*b가 잘 분기되는지 확인을 하는중*/

/*b가 잘 분기되는지 확인을 하는중*/

/*b가 잘 분기되는지 확인을 하는중*/

/*b가 잘 분기되는지 확인을 하는중*/
