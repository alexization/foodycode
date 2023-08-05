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
}

module.exports = RestStorage;
