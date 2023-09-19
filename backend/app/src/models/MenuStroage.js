const db = require("../config/db");

class MenuStorage {
  static getMenuInfo(rest_name) {
    return new Promise((resolve, reject) => {
      const query =
        "select menu.id, menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing FROM menu left join restaurant ON menu.rest_id = restaurant.id where restaurant.rest_name = ?;";
      db.query(query, [rest_name], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  static getMenuInfoByID(rest_id) {
    return new Promise((resolve, reject) => {
      const query =
        "select menu.id, menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing FROM menu left join restaurant ON menu.rest_id = restaurant.id where restaurant.uid = ?;";
      db.query(query, [rest_id], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  static getMenuDetail(menu_id) {
    return new Promise((resolve, reject) => {
      const query =
        "select menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing FROM menu WHERE menu.id = ?;";
      db.query(query, [menu_id], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  //알러지정보 추가 필요
  static async save(menu_info, rest_id) {
    console.log(menu_info, rest_id);
    return new Promise((resolve, reject) => {
      const menuquery = `INSERT INTO menu(rest_id,menu_name,menu_price,img_url,menu_ing)
    values((SELECT id FROM restaurant WHERE uid = ?),?,?,"menu_init",?);`;
      db.query(
        menuquery,
        [rest_id, menu_info.name, menu_info.price, menu_info.ing],
        (err) => {
          if (err) throw reject(`${err}`);
          if (menu_info.arr_algid.length === 0) {
            resolve({ success: true });
          }
        }
      );

      let insertValues = "";

      //이거 join이 , 로 끝나는데도 쿼리가 잘 완성이됨 (신기하네;)
      if (menu_info.arr_algid.length > 0) {
        const menuidArr = new Array(menu_info.arr_algid.length).fill(
          menu_info.name
        );

        insertValues = menu_info.arr_algid
          .map(
            (algid) => `(${algid},(SELECT id FROM menu WHERE menu_name = ?)) `
          )
          .join(", ");

        console.log(`insert val : ${insertValues}`);

        const algquery = insertValues
          ? `INSERT INTO menuAlgs(alg_id,menu_id) VALUES ${insertValues};`
          : "";
        console.log(`alg query : ${algquery}`);
        console.log(typeof menu_info.name);
        db.query(algquery, menuidArr, (err) => {
          if (err) throw reject(`${err}`);
          resolve({ success: true });
        });
      }
    });
  }
}

module.exports = MenuStorage;
