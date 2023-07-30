"use strict";

const UserStorage = require("./UserStorage");

class User{
    
    constructor(body){
        this.body = body;
    }

    async login(){
    const client = this.body;
        try{
        const {psword,uid,in_date} = await UserStorage.getUsersInfo(client.uid);
           
                if( uid === client.uid && psword === client.password){
                    return {success: true};
                }
                else{
                return {success: false, msg: "회원 정보가 일치하지 않습니다."}
                }
         
        } catch(err){
            return {success:false,msg: "잠시후 다시 시도해주세요."};
        }
    }
        //원래 로그인 로직
        //  try{
        // const {psword,uid,in_date} = await UserStorage.getUsersInfo(client.uid);
        //     if(uid){
        //         if( uid === client.uid && psword === client.psword){
        //             return {success: true};
        //         }
        //         return {success: false, msg: "잘못된 정보입니다."}
        //     }
        //     return {success: false, msg: "존재하지 않는 아이디입니다."}
        // } catch(err){
        //     return {success:false,msg:err};
        // }

    async register(){
        const client = this.body;

        try {
        const response = await UserStorage.save(client);
        return response;
        } catch(err){
            const a = {success:false , msg: err};
            console.log(typeof a.msg);
            return a;
        }

    }


}

module.exports = User;