'use strict';

const db = require('../config/db');

//class명은 파일이름과 동일한게 좋음
class AlgStorage {
  static getUsersAlgName(uid) {
    return new Promise((resolve, reject) => {
      const query =
        'select allergies.algname FROM users right join userAlgs ON users.id = userAlgs.uid inner join allergies ON userAlgs.algid = allergies.id where users.uid = ?;';
      db.query(query, [uid], (err, data) => {
        if (err) throw reject(`${err}`);

        resolve(data);
      });
    });
  }

  static getUsersAlgid(uid) {
    return new Promise((resolve, reject) => {
      const query =
        'select allergies.id FROM users right join userAlgs ON users.id = userAlgs.uid inner join allergies ON userAlgs.algid = allergies.id where users.uid = ?;';
      db.query(query, [uid], (err, data) => {
        if (err) throw reject(`${err}`);

        resolve(data);
      });
    });
  }

  static getMenuAlgInfo(rest_name) {
    return new Promise((resolve, reject) => {
      const query =
        'SELECT menu.menu_name, allergies.algname FROM menu LEFT JOIN restaurant ON menu.rest_id = restaurant.id LEFT JOIN menuAlgs ON menu.id = menuAlgs.menu_id LEFT JOIN allergies ON menuAlgs.alg_id = allergies.id WHERE restaurant.rest_name = ?;';
      db.query(query, [rest_name], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  static save(uid, ...arr_alg){
    return new Promise((resolve,reject)=>{
      let insertValues = '';
      insertValues = arr_alg
          .map(
            (algid) =>
              `(${algid}, (SELECT id FROM users WHERE uid = ?))`
          )
          .join(', ');

        // insertValues가 생성될때만 alg_Query를 생성  (혹시모를 오류)
        const alg_query = insertValues
          ? `INSERT INTO useralgs (algid, uid) VALUES    ${insertValues};`
          : '';

        db.query(alg_query, [uid], (err) => {
          if (err) throw reject(`${err}`);
          return resolve({ success: true });
        });
    })
  }

  static delete(uid, ...arr_alg){
    return new Promise((resolve,reject)=>{
      let insertValues = '';
      insertValues = arr_alg
          .map(
            (algid) =>
              `${algid}`
          )
          .join(', ');

        // insertValues가 생성될때만 alg_Query를 생성  (혹시모를 오류)
        const alg_query = insertValues
          ? `DELETE FROM userAlgs
          WHERE uid = (SELECT id FROM users WHERE uid = ?)
          AND algid IN (${insertValues});`
          : '';

        db.query(alg_query, [uid], (err) => {
          if (err) throw reject(`${err}`);
          return resolve({ success: true });
        });
    })
  }

}
module.exports = AlgStorage;
