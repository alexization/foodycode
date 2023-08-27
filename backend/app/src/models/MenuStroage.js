const db = require('../config/db');

class MenuStorage {
  static getMenuInfo(rest_name) {
    return new Promise((resolve, reject) => {
      const query =
        'select menu.id, menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing FROM menu left join restaurant ON menu.rest_id = restaurant.id where restaurant.rest_name = ?;';
      db.query(query, [rest_name], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  static getMenuInfoByID(rest_id) {
    return new Promise((resolve, reject) => {
      const query =
        'select menu.id, menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing FROM menu left join restaurant ON menu.rest_id = restaurant.id where restaurant.uid = ?;';
      db.query(query, [rest_id], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  static getMenuDetail(menu_id) {
    return new Promise((resolve, reject) => {
      const query =
        'select menu.menu_name,menu.img_url, menu.menu_price, menu.menu_ing FROM menu WHERE menu.id = ?;';
      db.query(query, [menu_id], (err, data) => {
        if (err) throw reject(`${err}`);
        resolve(data);
      });
    });
  }

  //알러지정보 추가 필요
 static async save(menuinfo,rest_id){
  return new Promise((resolve,reject)=>{
    const menuquery = `INSERT INTO menu(rest_id,menu_name,menu_price,img_url,menu_ing)
    values(?,?,?,"test_menu_img",?);`;
    db.query(menuquery,[rest_id,menuinfo.name,menuinfo.price,menuinfo.ing],(err)=>{
      if(err) throw reject(`${err}`);
      if(menuinfo.arr_algid.length === 0)
        { 
          resolve({success:true});
        }
    })

    let insertValues = "";


    //이거 join이 , 로 끝나는데도 쿼리가 잘완성이됨 (신기하네;)
    if(menuinfo.arr_algid.length > 0){
      insertValues = menuinfo.arr_algid
        .map(
          (algid)=>
            `(${algid},(SELECT id FROM menu WHERE menu_name = ?)) `
        )
        .join(', ');

      const algquery = insertValues 
      ? `INSERT INTO menualgs(alg_id,menu_id)
      VALUES ${insertValues})`
      : '';

      db.query(algquery,[menuinfo.name],(err)=>{
        if(err) throw reject(`${err}`);
        resolve({success:true});
      })
    }

  })
 }


}

module.exports = MenuStorage;
