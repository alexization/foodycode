<template>
  <div class="sign-up-page-register">
    <div class="register-page">
      <div class="uid">Email</div>
      <div class="uid-input">
        <input
          type="text"
          id="uid"
          name="uid"
          maxlength="32"
          placeholder="example@email.com"
          v-model="user_id"
        />
      </div>

      <button class="confirm" @click="click_confirm">Confirm</button>
      <div class="id-confirm-status" v-if="confirm_id_status === true">
        <img src="@/assets/icon/correct.png" />
        <span class="available">ID Available</span>
      </div>
      <div class="id-confirm-status" v-else-if="confirm_email === false">
        <img src="@/assets/icon/failed.png" />
        <span class="not-available">Please write in email format</span>
      </div>
      <div class="id-confirm-status" v-else-if="confirm_id_status === false">
        <img src="@/assets/icon/failed.png" />
        <span class="not-available">Please check confirm</span>
      </div>
      <div class="id-confirm-status" v-else-if="duplicate_status === true">
        <img src="@/assets/icon/failed.png" />
        <span class="not-available">There is a duplicate email</span>
      </div>

      <div class="password">Password</div>
      <div class="password-input">
        <input
          type="password"
          id="pw"
          name="password"
          maxlength="32"
          v-model="user_pw"
        />
      </div>

      <div class="password-confrim">Password Confirm</div>
      <div class="confirm-input">
        <input
          type="password"
          id="pw_confirm"
          name="pw_confirm"
          maxlength="32"
          v-model="user_pw_confirm"
        />
      </div>
      <div class="confirm_status" v-if="current_status === false">
        <img src="@/assets/icon/failed.png" />
        <span class="not_match" id="status">Passwords do not match</span>
      </div>
      <div class="confirm_status" v-else-if="current_status === true">
        <img src="@/assets/icon/correct.png" />
        <span class="match">Passwords match</span>
      </div>

      <div class="user-name">User Name</div>

      <div class="name-input">
        <input
          type="text"
          id="name"
          name="user_name"
          maxlength="15"
          v-model="user_name"
        />
      </div>
      <div class="Age">Age</div>
      <div class="Country">Country</div>

      <div class="age-input">
        <input
          type="number"
          id="age"
          name="age"
          pattern="\d*"
          min="1"
          max="150"
          v-model="user_age"
        />
      </div>

      <form>
        <select
          class="country-input"
          name="country"
          id="country"
          v-model="user_country"
        >
          <option value="" selected>Select Country</option>
          <option value="Afghanistan">Afghanistan</option>
          <option value="Albania">Albania</option>
          <option value="Algeria">Algeria</option>
          <option value="Andorra">Andorra</option>
          <option value="Angola">Angola</option>
          <option value="AntiguaandBarbuda">AntiguaandBarbuda</option>
          <option value="AraGaya">AraGaya</option>
          <option value="Argentina">Argentina</option>
          <option value="Argentinia">Argentinia</option>
          <option value="Australia">Australia</option>
          <option value="Austria">Austria</option>
          <option value="Azerbaijan">Azerbaijan</option>
          <option value="Baekje">Baekje</option>
          <option value="Bahamas">Bahamas</option>
          <option value="Bahrain">Bahrain</option>
          <option value="Bangladesh">Bangladesh</option>
          <option value="Barbados">Barbados</option>
          <option value="Belarus">Belarus</option>
          <option value="Belgium">Belgium</option>
          <option value="Bhutan">Bhutan</option>
          <option value="Bolivia">Bolivia</option>
          <option value="Brasil">Brasil</option>
          <option value="Brazil">Brazil</option>
          <option value="Bulgaria">Bulgaria</option>
          <option value="BurkinaFaso">BurkinaFaso</option>
          <option value="Burma">Burma</option>
          <option value="Byeonhan">Byeonhan</option>
          <option value="Byeonhanconfederacy">Byeonhanconfederacy</option>
          <option value="Cameroon">Cameroon</option>
          <option value="Canada">Canada</option>
          <option value="Chile">Chile</option>
          <option value="China">China</option>
          <option value="CIS">CIS</option>
          <option value="Colombia">Colombia</option>
          <option value="CostaRica">CostaRica</option>
          <option value="Croatia">Croatia</option>
          <option value="Cuba">Cuba</option>
          <option value="Cyprus">Cyprus</option>
          <option value="Czech">Czech</option>
          <option value="Côted'Ivoire">Côted'Ivoire</option>
          <option value="Daegaya">Daegaya</option>
          <option value="Denmark">Denmark</option>
          <option value="Dumangnu">Dumangnu</option>
          <option value="EastGermany">EastGermany</option>
          <option value="EastTimor">EastTimor</option>
          <option value="Ecuador">Ecuador</option>
          <option value="Egypt">Egypt</option>
          <option value="ElSalvador">ElSalvador</option>
          <option value="Eritrea">Eritrea</option>
          <option value="Eswatini">Eswatini</option>
          <option value="Ethiopia">Ethiopia</option>
          <option value="Fiji">Fiji</option>
          <option value="Finland">Finland</option>
          <option value="France">France</option>
          <option value="Gahna">Gahna</option>
          <option value="Gaya">Gaya</option>
          <option value="Gayaconfederacy">Gayaconfederacy</option>
          <option value="Georgia">Georgia</option>
          <option value="Germany">Germany</option>
          <option value="GeumgwanGaya">GeumgwanGaya</option>
          <option value="GijaJoseon">GijaJoseon</option>
          <option value="Goguryeo">Goguryeo</option>
          <option value="Gojoseon">Gojoseon</option>
          <option value="Goryeo">Goryeo</option>
          <option value="Greece">Greece</option>
          <option value="Guatemala">Guatemala</option>
          <option value="Haiti">Haiti</option>
          <option value="Honduras">Honduras</option>
          <option value="Hungary">Hungary</option>
          <option value="Iceland">Iceland</option>
          <option value="India">India</option>
          <option value="Indonesia">Indonesia</option>
          <option value="Iran">Iran</option>
          <option value="Iraq">Iraq</option>
          <option value="Ireland">Ireland</option>
          <option value="Israel">Israel</option>
          <option value="Italy">Italy</option>
          <option value="Jamaica">Jamaica</option>
          <option value="Japan">Japan</option>
          <option value="Jordan">Jordan</option>
          <option value="Kenya">Kenya</option>
          <option value="Korea">Korea</option>
          <option value="KoreanEmpire">KoreanEmpire</option>
          <option value="Kuwait">Kuwait</option>
          <option value="Kyrgyzstan">Kyrgyzstan</option>
          <option value="Laos">Laos</option>
          <option value="Latvia">Latvia</option>
          <option value="Lebanon">Lebanon</option>
          <option value="Lesotho">Lesotho</option>
          <option value="Liberia">Liberia</option>
          <option value="Libya">Libya</option>
          <option value="Liechtenstein">Liechtenstein</option>
          <option value="Lithuania">Lithuania</option>
          <option value="LittleGoguryeo">LittleGoguryeo</option>
          <option value="Luxemburg">Luxemburg</option>
          <option value="Macedonia">Macedonia</option>
          <option value="Malawi">Malawi</option>
          <option value="Malaysia">Malaysia</option>
          <option value="Malta">Malta</option>
          <option value="Marocco">Marocco</option>
          <option value="Mauritius">Mauritius</option>
          <option value="Mexico">Mexico</option>
          <option value="Moldova">Moldova</option>
          <option value="Mongolia">Mongolia</option>
          <option value="Morocco">Morocco</option>
          <option value="Namibia">Namibia</option>
          <option value="Nepal">Nepal</option>
          <option value="Netherlands">Netherlands</option>
          <option value="NewZealand">NewZealand</option>
          <option value="Nicaragua">Nicaragua</option>
          <option value="Nigeria">Nigeria</option>
          <option value="NorthKorea">NorthKorea</option>
          <option value="Norway">Norway</option>
          <option value="Pakistan">Pakistan</option>
          <option value="Palestine">Palestine</option>
          <option value="Panama">Panama</option>
          <option value="Paraguay">Paraguay</option>
          <option value="Persia">Persia</option>
          <option value="Peru">Peru</option>
          <option value="Philippines">Philippines</option>
          <option value="Poland">Poland</option>
          <option value="Portugal">Portugal</option>
          <option value="RepublicofFinland">RepublicofFinland</option>
          <option value="RepublicofKorea">RepublicofKorea</option>
          <option value="RepublicofMacedonia">RepublicofMacedonia</option>
          <option value="Romania">Romania</option>
          <option value="Russia">Russia</option>
          <option value="SaudiArabia">SaudiArabia</option>
          <option value="Senegal">Senegal</option>
          <option value="SierraLeone">SierraLeone</option>
          <option value="Singapore">Singapore</option>
          <option value="Somalia">Somalia</option>
          <option value="SouthKorea">SouthKorea</option>
          <option value="SouthSudan">SouthSudan</option>
          <option value="SovietUnion">SovietUnion</option>
          <option value="Spain">Spain</option>
          <option value="SriLanka">SriLanka</option>
          <option value="StateofPalestine">StateofPalestine</option>
          <option value="Sudan">Sudan</option>
          <option value="Surinam">Surinam</option>
          <option value="Suriname">Suriname</option>
          <option value="Swaziland">Swaziland</option>
          <option value="Sweden">Sweden</option>
          <option value="Switzerland">Switzerland</option>
          <option value="Syria">Syria</option>
          <option value="Taiwan">Taiwan</option>
          <option value="Tajikistan">Tajikistan</option>
          <option value="Tanzania">Tanzania</option>
          <option value="Thailand">Thailand</option>
          <option value="Togo">Togo</option>
          <option value="Tokelau">Tokelau</option>
          <option value="Tonga">Tonga</option>
          <option value="Tunesia">Tunesia</option>
          <option value="Tunisia">Tunisia</option>
          <option value="Turkey">Turkey</option>
          <option value="Turkmenistan">Turkmenistan</option>
          <option value="Tuvalu">Tuvalu</option>
          <option value="Uganda">Uganda</option>
          <option value="UnitedKingdom">UnitedKingdom</option>
          <option value="UnitedStates">UnitedStates</option>
          <option value="UnitedStatesofAmerica">UnitedStatesofAmerica</option>
          <option value="Uruguay">Uruguay</option>
          <option value="Uzbekistan">Uzbekistan</option>
          <option value="Vanuatu">Vanuatu</option>
          <option value="Venezuela">Venezuela</option>
          <option value="Vietnam">Vietnam</option>
          <option value="WimanJoseon">WimanJoseon</option>
          <option value="Yemen">Yemen</option>
          <option value="Zaire">Zaire</option>
          <option value="Zambia">Zambia</option>
        </select>
      </form>

      <div class="gender">Gender</div>
      <div class="select-gender">
        <input
          type="radio"
          id="male"
          name="gender"
          value="남"
          v-model="user_gender"
        /><label for="male">Male</label>
        <input
          type="radio"
          id="female"
          name="gender"
          value="여"
          v-model="user_gender"
        /><label for="female">Female</label>
      </div>
    </div>
    <div class="foot">
      <button
        class="Register"
        @click="click_register"
        v-if="final_status === true"
      >
        Next
      </button>
      <button class="Register-else" v-else disabled>Next</button>
    </div>
  </div>
</template>

<script>
import { ref } from "vue";
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";
import axios from "axios";

export default {
  setup() {
    return {
      user_id: ref(),
      user_pw: ref(),
      user_pw_confirm: ref(),
      user_name: ref(),
      user_age: ref(),
      user_gender: ref(),
      user_country: ref(),
    };
  },
  data() {
    return {
      arrow_back,
      line,
      register_data: {},
      current_status: "",
      status_text: "Please Input Text",
      confirm_id_status: "",
      confirm_email: "",
      final_status: false,
      duplicate_status: false,
      overlap: "",
    };
  },
  methods: {
    click_back() {
      location.href = "#/signup";
    },
    async click_confirm() {
      const uid = this.user_id;

      let res = await axios({
        method: "POST",
        url: "/api/confirm",
        data: {
          uid: uid,
        },
      }).then((res) => {
        this.overlap = res.data.success;
      });

      if (this.overlap) {
        if (this.CheckEmail(this.user_id)) {
          this.confirm_id_status = true;
          this.confirm_email = true;
          this.finalConfirm();
        } else {
          this.confirm_id_status = false;
          this.confirm_email = false;
          this.duplicate_status = true;
        }
      } else {
        this.confirm_id_status = false;
      }
    },
    CheckEmail(id) {
      var reg_email =
        /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
      if (!reg_email.test(id)) {
        return false;
      } else {
        return true;
      }
    },
    async click_register() {
      this.register_data.id = this.user_id;
      this.register_data.pw = this.user_pw;
      this.register_data.name = this.user_name;
      this.register_data.gender = this.user_gender;
      this.register_data.age = this.user_age;
      this.register_data.country = this.user_country;

      this.$emit("register_value", this.register_data);
      this.$emit("change_page");
    },
    checkPW() {
      if (this.user_pw != this.user_pw_confirm) {
        this.current_status = false;
        this.final_status = false;
      } else {
        this.current_status = true;
      }
    },
    finalConfirm() {
      if (
        this.current_status &&
        this.confirm_email &&
        this.confirm_id_status &&
        this.user_gender &&
        this.user_name &&
        this.user_age &&
        this.user_country
      ) {
        this.final_status = true;
      } else {
        this.final_status = false;
      }
    },
  },
  watch: {
    user_id() {
      var reg_email =
        /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
      if (reg_email.test(this.user_id)) {
        this.confirm_id_status = false;
        this.confirm_email = true;
      } else {
        this.confirm_email = false;
        this.confirm_id_status = false;
        this.final_status = false;
      }
      this.finalConfirm();
    },
    user_pw() {
      this.checkPW();
      this.finalConfirm();
    },
    user_pw_confirm() {
      this.checkPW();
      this.finalConfirm();
    },
    user_name() {
      this.finalConfirm();
    },
    user_age() {
      this.finalConfirm();
    },
    user_country() {
      this.finalConfirm();
    },
    user_gender() {
      this.finalConfirm();
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Roboto&display=swap");

.sign-up-page-register * {
  box-sizing: border-box;
}
.sign-up-page-register {
  position: absolute;
  top: 130px;
  width: 100%;
  height: 100%;
  background: #ffffff;
}

.register-page {
  position: absolute;
  top: 0px;
  width: 100%;
  height: 100%;
  overflow-x: clip;
}
.uid {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 29.8px;
}

input[type][id="uid"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  width: 65.9%;
  height: 30.4px;
  padding: 0px 10px;
  outline: none;
}
input[type][id="name"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  width: 84.6%;
  height: 30.4px;
  padding: 0px 10px;
  outline: none;
}
input[type][id="country"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  width: 52.6%;
  height: 30.4px;
  outline: none;
}

input[type="password"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  width: 84.6%;
  height: 30.4px;
  padding: 0px 10px;
  outline: none;
}
input[type="number"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  width: 21.8%;
  height: 30.4px;
  padding: 0px 10px;
  outline: none;
}
.uid-input {
  position: absolute;
  left: 7.7%;
  top: 61.9px;
  width: 100%;
  outline: none;
}
.confirm {
  background: #ffffff;
  border-style: solid;
  border-color: #000000;
  border-width: 1px;
  width: 19.2%;
  height: 30.4px;
  position: absolute;
  left: 73.1%;
  top: 61.9px;
  text-align: center;
  font: 600 14px "Roboto", sans-serif;
  color: black;
  cursor: pointer;
}
.id-confirm-status {
  position: absolute;
  top: 95px;
  left: 7.7%;
}
.id-confirm-status img {
  width: 14px;
  height: 14px;
  vertical-align: middle;
}
.available {
  font: 600 14px "Roboto", sans-serif;
  color: #1c9181;
}
.not-available {
  font: 600 14px "Roboto", sans-serif;
  color: red;
}
.password {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 131.9px;
}
.password-input {
  position: absolute;
  left: 7.7%;
  top: 164.8px;
  width: 100%;
}
.password-confrim {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 210.4px;
}
.confirm-input {
  position: absolute;
  left: 7.7%;
  top: 243.3px;
  width: 100%;
}
.confirm_status {
  position: absolute;
  top: 280px;
  left: 7.7%;
}
.confirm_status img {
  width: 14px;
  height: 14px;
  vertical-align: middle;
}
.not_match {
  color: red;
  font: 600 14px "Roboto", sans-serif;
}
.match {
  color: #1c9181;
  font: 600 14px "Roboto", sans-serif;
}
.user-name {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 313.4px;
}
.name-input {
  position: absolute;
  left: 7.7%;
  top: 346.3px;
  width: 100%;
}
.gender {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 468.7px;
}

.select-gender {
  position: absolute;
  top: 502px;
  width: 100%;
  height: 30px;
  display: flex;
  justify-content: space-evenly;
}
.select-gender input[type="radio"] {
  display: none;
}
.select-gender input[type="radio"] + label {
  display: inline-block;
  cursor: pointer;
  height: 100%;
  width: 38.45%;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  text-align: center;
  padding-top: 4px;
  font: 400 16px "Roboto", sans-serif;
}
.select-gender input[type="radio"] + label {
  background-color: #fff;
  color: black;
}
.select-gender input[type="radio"]:checked + label {
  transition: 0.5s;
  background-color: #1c9181;
  color: #fff;
}
.Age {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 391px;
}
.Country {
  color: #000000;
  text-align: left;
  font: 400 17px "Roboto", sans-serif;
  position: absolute;
  left: 38.5%;
  top: 391px;
}
.age-country {
  position: absolute;
  inset: 0;
}
.age-input {
  position: absolute;
  left: 7.7%;
  top: 424px;
  width: 100%;
}

.country-input {
  position: absolute;
  left: 38.5%;
  height: 30px;
  top: 424px;
  width: 53.8%;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  padding-left: 10px;
  font: 500 14px "Roboto", sans-serif;
  color: black;
  background: white;
  outline: none;
  cursor: pointer;
}

.foot {
  position: fixed;
  width: 100%;
  bottom: 0;
  max-width: 500px;
}
.Register {
  background: #1c9181;
  width: 100%;
  height: 60px;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Roboto", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
.Register-else {
  background: #a5dad3bd;
  width: 100%;
  height: 60px;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Roboto", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
</style>
