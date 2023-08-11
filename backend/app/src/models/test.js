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


const userInfo = "sdfsdf";
const arr_algid = [1];

const info_query = "INSERT INTO users(uid, psword, name, age, gen, country, email) VALUES (?, ?, '3', '3', '3', '3', '3');";

let insertValues = '';
// 유저 알러지 정보가 하나라도 선택되어 있을 때만 테이블에 저장
if (arr_algid.length > 0) {
    insertValues = arr_algid.map(algid => `(${algid}, (SELECT id FROM users WHERE uid = ?))`).join(', ');
}

const alg_Query = insertValues ? `INSERT INTO useralgs (algid, uid) VALUES ${insertValues};` : '';

const query = `${info_query}\n${alg_Query}`;

console.log(query);