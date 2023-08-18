'use strict';

const db = require('../config/db');

//class명은 파일이름과 동일한게 좋음
class AlgStorage {
  static getUsersAlgName(id) {
    return new Promise((resolve, reject) => {
      const query =
        'select allergies.algname FROM users right join userAlgs ON users.id = userAlgs.uid inner join allergies ON userAlgs.algid = allergies.id where users.uid = ?;';
      db.query(query, [id], (err, data) => {
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
}
module.exports = AlgStorage;
