"use strict";

const UserStorage = require("./UserStorage");

const bcrypt = require("bcrypt");

class User {
  constructor(body) {
    this.body = body;
  }

  async login() {
    const client = this.body;
    try {
      const { psword: encpsword, uid } = await UserStorage.getUsersInfo(
        client.uid
      );
      // id가 있어서 정보가 불러와진 경우
      if (uid === client.uid) {
        const psword_ismatch = await bcrypt.compare(client.password, encpsword);
        if (psword_ismatch) {
          return { success: true };
        } else {
          return { success: false, msg: "Member information does not match." };
        }
      }
    } catch (err) {
      return { success: false, msg: "Please try again in a moment." };
    }
  }

  async register() {
    const client = this.body;
    const saltRounds = 10; // hash count

    await bcrypt.hash(client.psword, saltRounds).then((hash) => {
      client.encpsword = hash;
    });
    try {
      const response = await UserStorage.save(client);
      return response;
    } catch (err) {
      const a = { success: false, msg: err };
      return a;
    }
  }

  async getUsersInfo() {
    const client = this.body;
    try {
      const response = await UserStorage.getUsersInfo(client);
      return response;
    } catch (err) {
      const a = { success: false, msg: err };
      return a;
    }
  }

  async ID() {
    const client = this.body;
    try {
      const { uid } = await UserStorage.getUsersInfo(client.uid);

      if (uid === client.uid) {
        return { success: false, msg: "ID is duplicated." };
      } else {
        return { success: true, msg: "This is an available ID." };
      }
    } catch (err) {
      return { success: true, msg: "This is an available ID." };
    }
  }

  // myfoody username 변경
  async edit(userid) {
    const client = this.body;
    try {
      const response = await UserStorage.update(userid, client);
      return response;
    } catch (err) {
      return { success: false, msg: err };
    }
  }
}

module.exports = User;
