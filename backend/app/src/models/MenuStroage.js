db = require("../config/db");

class MenuStorage{

    static getMenuInfo(){
        return new Promise((resolve,reject)=>{
            const query = "=select menu.menu_name ,menu.img_url FROM menu left join restaurant ON menu.rest_id = restaurant.id where restaurant.rest_name = 'yeon tan bulgogi';";
            db.query(query,[],(err,data)=>{
                if(err) throw reject(`${err}`);
                resolve(data);
            });
        });
    }
}

module.exports = MenuStorage;
