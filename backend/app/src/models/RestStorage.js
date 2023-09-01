const db = require('../config/db');

class RestStorage {
  static getRestNamePic() {
    return new Promise((resolve, reject) => {
      const query = 'SELECT rest_name,img_url, tel from restaurant';
      db.query(query, [], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  static getUserInfo(id){
    return new Promise((resolve, reject)=>{
      const query = `SELECT * from restaurant where uid = ?;`;
      db.query(query,[id],(err,data)=>{
        if(err) throw reject(`${err}`);
        resolve(data[0]);
      })
    })

  }

  
  static getMyUserInfo(id){
    return new Promise((resolve, reject)=>{
      const query = `SELECT uid,rest_name,address,ceo_name,tel,img_url from restaurant where uid = ?;`;
      db.query(query,[id],(err,data)=>{
        if(err) throw reject(`${err}`);
        resolve(data[0]);
      })
    })

  }

//async뺴도되나?
  static async save(restInfo){
    return new Promise((resolve,reject)=>{
      const query = `INSERT INTO restaurant 
      (uid,psword,rest_name,address,ceo_name,tel,img_url)
      values(?,?,?,?,?,?,"restaurant_init");`;
      db.query(query,[restInfo.uid,restInfo.psword,restInfo.rest_name,restInfo.address,restInfo.ceo_name,restInfo.tel],(err)=>{
        if(err) throw reject(`${err}`);
        resolve({success:true});
      })
    })
  }


  //id에 where절에 뭐넣을지 고민중
  static async update(rest_uid,restInfo){
    return new Promise((resolve,reject)=>{
      const query = `UPDATE restaurant 
      SET rest_name = ? , address = ? , ceo_name = ? , tel =? 
      where uid = ?;`;
      db.query(query,[restInfo.name,restInfo.address,restInfo.ceo_name,restInfo.tel,rest_uid],(err)=>{
        if(err) throw reject(`${err}`);
        resolve({success:true});
      })
    })
  }

}

module.exports = RestStorage;
