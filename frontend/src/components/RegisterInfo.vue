<template>
  <div class="sign-up-page-register">
    <div class="register-page">
      <div class="uid">User ID</div>
      <div class="uid-input">
        <input type="text" id="uid" name="uid" maxlength="16" />
      </div>

      <button class="confirm" @click="click_confirm">Confirm</button>

      <div class="password">Password</div>
      <div class="password-input">
        <input type="password" id="pw" name="password" maxlength="32" />
      </div>

      <div class="password-confrim">Password Confirm</div>
      <div class="confirm-input">
        <input
          type="password"
          id="pw_confirm"
          name="pw_confirm"
          maxlength="32"
        />
      </div>

      <div class="user-name">User Name</div>

      <div class="name-input">
        <input type="text" id="name" name="user_name" />
      </div>
      <div class="Age">Age</div>
      <div class="Country">Country</div>

      <div class="age-input">
        <input type="number" id="age" name="age" pattern="\d*" />
      </div>

      <form>
        <select class="country-input" name="country" id="country">
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
        <input type="radio" id="male" name="gender" value="남" /><label
          for="male"
          >Male</label
        >
        <input type="radio" id="female" name="gender" value="여" /><label
          for="female"
          >Female</label
        >
      </div>
    </div>
    <button class="Register" @click="click_register">Next</button>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";

export default {
  data() {
    return {
      arrow_back,
      line,
      register_data: {},
    };
  },
  methods: {
    click_back() {
      location.href = "#/signup";
    },
    click_confirm() {
      alert("Click Confirm");
    },
    async click_register() {
      this.register_data.id = document.getElementById("uid").value;
      this.register_data.pw = document.getElementById("pw").value;
      this.register_data.name = document.getElementById("name").value;
      var radios = document.getElementsByName("gender");

      radios.forEach((elem) => {
        if (elem.checked) {
          this.register_data.gender = elem.value;
        }
      });
      this.register_data.age = document.getElementById("age").value;
      this.register_data.country = document.getElementById("country").value;

      this.$emit("register_value", this.register_data);
      this.$emit("change_page");
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap");

.sign-up-page-register,
.sign-up-page-register * {
  box-sizing: border-box;
}
.sign-up-page-register {
  background: #ffffff;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 130px);
  top: 130px;
  position: absolute;
}
.register-page {
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 190px);
  position: absolute;
  overflow-x: clip;
  overflow-y: scroll;
}
.uid {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 29.8px;
}

input[type="text"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 65.9%;
  height: 30.4px;
  outline: none;
}
input[type][id="user_name"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6%;
  height: 30.4px;
  outline: none;
}
input[type][id="country"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 52.6%;
  height: 30.4px;
  outline: none;
}

input[type="password"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6%;
  height: 30.4px;
  outline: none;
}
input[type="number"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 21.8%;
  height: 30.4px;
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
  font: 600 14px "Noto Sans", sans-serif;
  color: black;
  cursor: pointer;
}

.password {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
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
  font: 400 17px "Noto Sans", sans-serif;
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
.user-name {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
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
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 468.7px;
}

.select-gender {
  position: absolute;
  top: 502px;
  width: 100%;
  height: 30px;
  padding-left: 10%;
  padding-right: 10%;
}
.select-gender input[type="radio"] {
  display: none;
}
.select-gender input[type="radio"] + label {
  display: inline-block;
  cursor: pointer;
  height: 30px;
  width: 50%;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  text-align: center;
  font: 400 16px "Noto Sans", sans-serif;
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
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 391px;
}
.Country {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
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
  width: 50%;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  border-radius: 5px;
  font: 500 14px "Noto Sans", sans-serif;
  color: black;
  background: white;
  outline: none;
}

.Register {
  background: #1c9181;
  width: 100%;
  height: 60px;
  position: absolute;
  bottom: 0px;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Noto Sans", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
</style>
