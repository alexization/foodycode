<template>
    <div class="wrapper">
      <div class="user-name-box">
        <div class="instruction">Current Password</div>
        <input type="password" id="cur_pwd" class="input-password" placeholder="current password" />
        <div class="instruction">New Password</div>
        <input type="password" id="new_pwd" class="input-password" placeholder="new password" />
      </div>
      <hr class="line" />
      <div class="button-box">
        <button>Change</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {};
  </script>
  
  <style scoped>
  @import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");
  
  .wrapper * {
    box-sizing: border-box;
  }
  
  .wrapper {
    position: absolute;
    top: 80px;
    width: 100%;
    height: calc(var(--vh, 1vh) * 100 - 80px);
    background: #ffffff;
  }
  
  .user-name-box {
    position: absolute;
    top: 0px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    width: 100%;
    height: 200px;
    background: #ffffff;
  }
  
  .instruction {
    position: relative;
    display: flex;
    align-items: center;
    width: 100%;
    height: 50px;
    margin-left: 35px;
    font: 600 16px "Noto Sans", sans-serif;
    color: #000000;
  }
  
  .input-password {
    position: relative;  
    border: 1px solid #eeeeee;
    border-radius: 15px;
    width: 90%;
    height: 40px;
    margin: 0px auto;
    padding: 0px;
    padding-left: 20px;
    background: #eeeeee;
    font: 600 15px "Noto Sans", sans-serif;
    color: #525252;
  }
  
  .line {
    position: absolute;
    bottom: 70px;
    width: 100%;
    border: solid 1px;
    color: #ccc;
  }
  
  .button-box {
    position: absolute;
    bottom: 0px;
    display: flex;  
    justify-content: center;
    bottom: 0px;
    width: 100%;
    height: 70px;
    background: #ffffff;
  }
  
  button {
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid #cccccc;
    width: 90%;
    height: 40px;
    margin: auto;
    background: #cccccc;
    font: 600 16px "Noto Sans", sans-serif;
    color: #ffffff;
  }
  </style>
  