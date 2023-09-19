"use strict";

const UserAlgStorage = require("./UserAlgStorage");

class UserAlg {
  constructor(body) {
    this.body = body;
  }

  // 알러지배열을 받아 원래 없던건 추가, 있던건 삭제하도록
  async edit_alg(uid) {
    //문자열로 받아진거 숫자로
    const arr_inputalgid_num = this.body.arr_algid;
    const arr_newalgid = arr_inputalgid_num.map((str) => parseInt(str, 10));

    // DB에서 가져오는 배열
    const arr_useralgid = await UserAlgStorage.getUsersAlgid(uid);

    // 기존에 유저에게 있던 알러지 ID 배열.
    // DB에서 갓잡은 상태이기 떄문에 배열로 바까줌;
    const arr_prealgid = [];

    // 혹시 알러지정보가 없을경우 db에서 못가져올까봐 IF문 안에 집어넣음
    if (arr_useralgid) {
      for (let i = 0; i < arr_useralgid.length; i++) {
        arr_prealgid.push(arr_useralgid[i].algid);
      }
    }

    function findUniqueElements(pre_arr, new_arr) {
      const uniqueInpre = pre_arr.filter(
        (element) => !new_arr.includes(element)
      );
      const uniqueInnew = new_arr.filter(
        (element) => !pre_arr.includes(element)
      );
      return { uniqueInpre, uniqueInnew };
    }

    let { uniqueInpre: arr_algid_del, uniqueInnew: arr_algid_add } =
      findUniqueElements(arr_prealgid, arr_newalgid);

    if (arr_algid_del.length > 0) {
      await UserAlgStorage.delete(uid, arr_algid_del);
    }

    if (arr_algid_add.length > 0) {
      await UserAlgStorage.save(uid, arr_algid_add);
    }

    return { success: true };
  }
}

module.exports = UserAlg;
