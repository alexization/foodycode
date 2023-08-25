var express = require("express");
var router = express.Router();


const AlgCtrl = require("../controller/AlgCtrl");

const UserAlgCtrl = require("../controller/UserAlgCtrl");

router.get("/",AlgCtrl.sendUserAlgs);

router.put("/",UserAlgCtrl.processEditAlg);

module.exports = router;



// async click_edit() {
//     console.log(this.allergy[2]);

//     let res = await axios({
//       method: "PUT",
//       url: "api/useralg",
//       data: {
//         arr_algid: this.allergy,
//       },
//     }).then((res) => {
//       if (res.data.success) {
//         alert("수정 완료!");
//       } else {
//         alert(res.data);
//       }
//     });

//   },