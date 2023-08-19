'use strict';

const db = require('../config/db');

//class명은 파일이름과 동일한게 좋음
class UserStorage {
  static getUsersInfo(id) {
    return new Promise((resolve, reject) => {
      const query = 'SELECT * FROM users where uid = ?;';
      db.query(query, [id], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data[0]);
      });
    });
  }

  static getUsersName(id) {
    return new Promise((resolve, reject) => {
      const query = 'SELECT name FROM users where uid = ?;';
      db.query(query, [id], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data[0]);
      });
    });
  }

  static async save(userInfo) {
    return new Promise((resolve, reject) => {
      const info_query =
        "INSERT INTO users(uid,psword,name,age,gen,country,email) VALUES(?,?,?,?,?,?,'test0820@yonsei.ac.kr');";

      db.query(info_query, [userInfo.uid, userInfo.psword,userInfo.name,userInfo.age,userInfo.gender,userInfo.country], (err) => {
        console.log(info_query);
        if (err) throw reject(`${err}`);
        
        //알러지 없으면 추가 할필요 없음
        if(userInfo.arr_algid.length === 0){
        
      console.log("no alg!!!!");
      console.log("no alg!!!!");
      console.log("no alg!!!!");
      console.log("no alg!!!!");
      
      console.log("==================");
        return resolve({success:true});
        }
      });

      console.log("yes alg!!!!");
      console.log("yes alg!!!!");
      console.log("yes alg!!!!");
      console.log("yes alg!!!!");
      //inservalues에 빈문자열 할당, if문 후 쿼리 생성
      let insertValues = '';

      // 유저 알러지 정보가 하나라도 선택되어 있을때만 쿼리를 생성
      if (userInfo.arr_algid.length > 0) {
        insertValues = userInfo.arr_algid
          .map(
            (algid) =>
              `(${algid}, (SELECT id FROM users WHERE uid = '${userInfo.uid}'))`
          )
          .join(', ');

        // insertValues가 생성될때만 alg_Query를 생성  (혹시모를 오류)
        const alg_query = insertValues
          ? `INSERT INTO useralgs (algid, uid) VALUES    ${insertValues};`
          : '';

        db.query(alg_query, [userInfo.uid, userInfo.password], (err) => {
          if (err) throw reject(`${err}`);
          return resolve({ success: true });
        });
      }
    });
  }
}
module.exports = UserStorage;
