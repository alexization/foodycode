const MenuStorage = require('../models/MenuStroage');
const AlgStorage = require('../models/UserAlgStorage');

class MenuCtrl {

  static async sendMymenuInfo(req,res){
    
    const menu_id = req.params.menu_id;

    const arr_menuDetail = await MenuStorage.getMenuDetail(menu_id);
    res.send(arr_menuDetail);
  }

  static async sendMenuInfo(req, res) {
    const rest_name = req.params.rest_name;

    //유지된 세션의 유저ID
    const uid = req.session.userid;

    console.log('-------');
    console.log(rest_name);
    console.log('-------');
    //메뉴의 알러지 배열
    const arr_menuAlg = await AlgStorage.getMenuAlgInfo(rest_name);
    //유저의 알러지 배열
    const arr_userAlg = await AlgStorage.getUsersAlgName(uid);
    //메뉴전체 정보에대한 배열
    const arr_menuInfo = await MenuStorage.getMenuInfo(rest_name);

    for (let i = 0; i < arr_menuInfo.length; i++) {
      arr_menuInfo[i].menu_alg = []; // 기본적으로 빈 배열로 초기화

      for (let j = 0; j < arr_menuAlg.length; j++) {
        if (arr_menuInfo[i].menu_name === arr_menuAlg[j].menu_name) {
          // arr_menuAlg의 algname이 arr_userAlg에 있는지 확인하고, 있으면 menu_alg에 추가
          if (
            arr_userAlg.some((alg) => alg.algname === arr_menuAlg[j].algname)
          ) {
            arr_menuInfo[i].menu_alg.push(arr_menuAlg[j].algname);
          }
        }
      }
    }

    // 결과 출력
    console.log(arr_menuInfo);
    res.send(arr_menuInfo);
  }

  static async sendMenuDetail(req, res) {
    const menu_id = req.params.menu_id;

    const arr_menuDetail = await MenuStorage.getMenuDetail(menu_id);
    res.send(arr_menuDetail);
  }

  static async addMenu(req,res){
    const response = await MenuStorage.save(req.body);
    return res.send(response);
  }
}

module.exports = MenuCtrl;
