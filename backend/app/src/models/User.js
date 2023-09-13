'use strict';

const UserStorage = require('./UserStorage');

const bcrypt = require('bcrypt');

class User {
  constructor(body) {
    this.body = body;
  }

  async login() {
    const client = this.body;
    try {
      const { psword: encpsword, uid } = await UserStorage.getUsersInfo(
        client.uid,
      );
      // id가 있어서 정보가 불러와진 경우
      if (uid === client.uid) {
        const psword_ismatch = await bcrypt.compare(client.password, encpsword);
        if (psword_ismatch) {
          return { success: true };
        } else {
          return { success: false, msg: '회원 정보가 일치하지 않습니다.' };
        }
      }
    } catch (err) {
      return { success: false, msg: '잠시후 다시 시도해주세요.' };
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
      console.log(typeof a.msg);
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
        return { success: false, msg: 'ID가 중복됩니다.' };
      } else {
        return { success: true, msg: '사용가능한 ID입니다.' };
      }
    } catch (err) {
      return { success: true, msg: '사용가능한 ID입니다.' };
    }
  }
}

module.exports = User;
