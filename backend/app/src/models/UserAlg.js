'use strict';

const UserAlgStorage = require('./UserAlgStorage');

class UserAlg{
    constructor(body){
        this.body = body;

    }

    // 알러지배열을 받아 원래 없던건 추가, 있던건 삭제하도록
    async edit_alg(){
        const uid = this.body.uid;
        const arr_editalgid = this.body.arr_algid;

        // DB에서 가져오는 배열
        const arr_useralgid = UserAlgStorage.getUsersAlgid(uid);

        // 기존에 유저에게 있던 알러지 ID 배열.
        // DB에서 갓잡은 상태이기 떄문에 배열로 바까줌;
        const arr_prealgid = [];
        
        for (let i = 0; i < arr_useralgid.length; i++) {
          arr_prealgid.push(arr_useralgid[i].algname);
        }

        function findUniqueElements(arrA, arrB) {
            const uniqueInA = arrA.filter(element => !arrB.includes(element));
            const uniqueInB = arrB.filter(element => !arrA.includes(element));
            return { uniqueInA, uniqueInB };
          }
          
          
        const { uniqueInA, uniqueInB } = findUniqueElements(arr_prealgid, arr_editalgid);
          
          console.log("Unique in A:", uniqueInA);
          console.log("Unique in B:", uniqueInB)

        const response = await UserAlgStorage.save(uid,arr_algid);



    }

}