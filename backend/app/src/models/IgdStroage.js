"use strict";

const db = require("../config/db");

class IgdStorage {
  static getIgdNamesContain(key) {
    console.log(key);
    return new Promise((resolve, reject) => {
      const query = `select igd.name ,igdAlgs.alg_id from igd left join igdAlgs on igd.id = igdAlgs.igd_id where igd.name LIKE '%${key}%';`;
      db.query(query, [], (err, data) => {
        if (err) throw reject(`${err}`);

        const transformedData = {};

        data.forEach((item) => {
          if (!transformedData[item.name]) {
            transformedData[item.name] = { igd_name: item.name, arr_algid: [] };
          }

          transformedData[item.name].arr_algid.push(item.alg_id);
        });

        const result = Object.values(transformedData);

        resolve(result);
      });
    });
  }
}

module.exports = IgdStorage;
