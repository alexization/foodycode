"use strict";

const RestStorage = require("./RestStorage");

class Rest {
  constructor(body) {
    this.body = body;
  }

  async login() {
    const client = this.body;
    try {
      const { psword: rest_psword, uid: rest_id } =
        await RestStorage.getUserInfo(client.uid);

      if (rest_id === client.uid && rest_psword === client.psword) {
        return { success: true };
      } else {
        return { success: false, msg: "Member information does not match." };
      }
    } catch (err) {
      return { success: false, msg: "Please try again in a moment." };
    }
  }

  async register() {
    const client = this.body;
    try {
      const response = await RestStorage.save(client);
      return response;
    } catch (err) {
      const b = { success: false, msg: err };
      return b;
    }
  }

  async edit(rest_uid) {
    const client = this.body;
    try {
      const response = await RestStorage.update(rest_uid, client);
      return response;
    } catch (err) {
      const b = { success: false, msg: err };
      return b;
    }
  }
}

module.exports = Rest;
