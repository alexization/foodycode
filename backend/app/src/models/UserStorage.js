"use strict";

const db = require('../config/db');


//class명은 파일이름과 동일한게 좋음
class UserStorage{
    
     static getUsersInfo(id){
        return new Promise((resolve,reject) => {
            const query = "SELECT * FROM users where uid = ?;";
            db.query(query,[id],(err,data)=>{
                if(err) throw reject(`${err}`);
                resolve(data[0]);
            });
        });
    }

    static getUsersName(id){
        return new Promise((resolve,reject) => {
            const query = "SELECT name FROM users where uid = ?;";
            db.query(query,[id],(err,data)=>{
                if(err) throw reject(`${err}`);
                resolve(data[0]);
            });
        });
    }

    static async save(userInfo){
        return new Promise((resolve,reject) => {
            // const query = "INSERT INTO users(uid,name,psword) VALUES(?,?,?);";
            // db.query(query,[userInfo.uid,userInfo.name,userInfo.psword],
            const info_query = "INSERT INTO users(uid,psword,name,age,gen,country,email) VALUES(?,?,'3','3','3','3','3');";
        

            let insertValues = '';
            // 유저 알러지 정보가 하나라도 선택되어 있을때만 쿼리를 생성
            if (userInfo.arr_algid.length > 0) {
                insertValues = arr_algid.map(algid => `(${algid}, (SELECT id FROM users WHERE uid = '${userInfo.uid}'))`).join(', ');
            }

            // insertValues가 생성될때만 alg_Query를 생성
            const alg_Query = insertValues ? `INSERT INTO useralgs (algid, uid) VALUES    ${insertValues};` : '';

            const query = `${info_query}\n${alg_Query}`;

            db.query(query,[userInfo.uid,userInfo.password],(err)=>{
                if(err) throw reject(`${err}`);
                resolve({success:true});
            });
        });
        
    }




}
module.exports = UserStorage;
