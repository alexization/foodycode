const arr_algid = [];
const uid = 'leo1313';

const insertValues = arr_algid.map(algid => `(${algid}, (SELECT id FROM users WHERE uid = '${uid}'))`).join(', ');

const sqlQuery = `INSERT INTO useralgs (algid, uid)
VALUES
    ${insertValues};`;

console.log(sqlQuery);