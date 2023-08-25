// const arr_algid = [1];
// const uid = 'leo1313';

// const insertValues = ''; // 빈 문자열로 초기화

// if (arr_algid.length > 0) {
//     insertValues = arr_algid.map(algid => `(${algid}, (SELECT id FROM users WHERE uid = '${uid}'))`).join(', ');
// }

// const sqlQuery = insertValues ? `INSERT INTO useralgs (algid, uid)\nVALUES\n    ${insertValues};` : '';

// console.log(sqlQuery);


// const userInfo='sdfsdf';
// const arr_algid=[1];

// const info_query = "INSERT INTO users(uid,psword,name,age,gen,country,email) VALUES(?,?,'3','3','3','3','3');";
        

// const insertValues = '';
//             //유저 알러지 정보가 하나라도 선택되어 있을때만 테이블에 저장
// if (arr_algid.length > 0) {
//     insertValues = arr_algid.map(algid => `(${algid}, (SELECT id FROM users WHERE uid = '${userInfo}'))`).join(', ');
// }





// const alg_Query = insertValues ? `INSERT INTO useralgs (algid, uid) VALUES    ${insertValues};` : '';
            
            
// const query = `${info_query}\n${alg_Query}`;




////
// const userInfo = "sdfsdf";
// const arr_algid = [1,2,21,6,15,3,13];

// const info_query = "INSERT INTO users(uid, psword, name, age, gen, country, email) VALUES (?, ?, '3', '3', '3', '3', '3');";

// let insertValues = '';
// // 유저 알러지 정보가 하나라도 선택되어 있을 때만 테이블에 저장
// if (arr_algid.length > 0) {
//     insertValues = arr_algid.map(algid => `(${algid}, (SELECT id FROM users WHERE uid = ?))`).join(', ');
// }

// const alg_Query = insertValues ? `INSERT INTO useralgs (algid, uid) VALUES ${insertValues};` : '';

// const query = `${info_query}\n${alg_Query}`;

// console.log(query);


//알러지배열 세이브, 딜리트 함수만들떄

// const arr_alg = [3,1,2];
// let insertValues = '';
// insertValues = arr_alg
// .map( (algid) =>`${algid}` )
// .join(', ');

//         // insertValues가 생성될때만 alg_Query를 생성  (혹시모를 오류)
// const alg_query = insertValues
// ? `DELETE FROM userAlgs
// WHERE id= (SELECT id FROM users WHERE uid = ?)
// AND algid IN (${insertValues});`
// : '';

// console.log(alg_query);



// let insertValues2 = '';
//       insertValues2 = arr_alg
//           .map(
//             (algid) =>
//               `(${algid}, (SELECT id FROM users WHERE uid = ?))`
//           )
//           .join(', ');

//         // insertValues가 생성될때만 alg_Query를 생성  (혹시모를 오류)
//         const alg_querys = insertValues2
//           ? `INSERT INTO useralgs (algid, uid) VALUES    ${insertValues2};`
//           : '';

// consolE.log(alg_querys);


// 알러지배열 새로 추가되거나 삭제될거 나눠주는 알고리즘

function findUniqueElements(arrayA, arrayB) {
    const uniqueInA = arrayA.filter(element => !arrayB.includes(element));
    const uniqueInB = arrayB.filter(element => !arrayA.includes(element));
    return { uniqueInA, uniqueInB };
  }
  
  let arrayA = [1,2,3];

  let arrayB = [1,2,3];

  
  const { uniqueInA, uniqueInB } = findUniqueElements(arrayA, arrayB);
  
  console.log("Unique in A:", uniqueInA);
  console.log("Unique in B:", uniqueInB)