const MenuStorage =require("../models/MenuStroage");
const AlgStorage = require("../models/AlgStorage");

class MenuCtrl {

  static async sendMenuInfo(req, res) {

    //메뉴의 알러지 배열
    const arr_menuAlg =await AlgStorage.getMenuAlgInfo();
    //유저의 알러지 배열
    const arr_userAlg =  await AlgStorage.getUsersAlgName("lls");
    //메뉴전체 정보에대한 배열
    const arr_menuInfo =  await MenuStorage.getMenuInfo();


    for (let i = 0; i < arr_menuInfo.length; i++) {
      arr_menuInfo[i].menu_arg = []; // 기본적으로 빈 배열로 초기화
    
      for (let j = 0; j < arr_menuAlg.length; j++) {
        if (arr_menuInfo[i].menu_name === arr_menuAlg[j].menu_name) {
          // arr_menuAlg의 algname이 arr_userAlg에 있는지 확인하고, 있으면 menu_arg에 추가
          if (arr_userAlg.some((alg) => alg.algname === arr_menuAlg[j].algname)) {
            arr_menuInfo[i].menu_arg.push(arr_menuAlg[j].algname);
          }
        }
      }
    }
    
    // 결과 출력
    console.log(arr_menuInfo);
    res.send(arr_menuInfo);
  }


}

module.exports = MenuCtrl;
