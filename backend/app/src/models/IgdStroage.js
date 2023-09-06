 'use strict';

 const db = require('../config/db');


class IgdStorage{
    static getIgdNamesContain(key){
        return new Promise((resolve,reject)=>{
            const query = `select name from igd where name LIKE %${key}%;`;
            db.query(query,[],(err,data)=>{
                if(err) throw reject(`${err}`);
                resolve(data);
            });
        });
    };
} 

module.exports = IgdStorage;