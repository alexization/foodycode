<template>
  <div>
    <SignUpHeader></SignUpHeader>
    <StepCard></StepCard>
    <div class="Head">
      <div class="terms-of-service">Terms of Service</div>
      <svg
        @click="download_button"
        class="download-img"
        width="24"
        height="24"
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M21 14.25V19.5C21 19.8978 20.842 20.2794 20.5607 20.5607C20.2794 20.842 19.8978 21 19.5 21H4.5C4.10218 21 3.72064 20.842 3.43934 20.5607C3.15804 20.2794 3 19.8978 3 19.5V14.25C3 14.0511 3.07902 13.8603 3.21967 13.7197C3.36032 13.579 3.55109 13.5 3.75 13.5C3.94891 13.5 4.13968 13.579 4.28033 13.7197C4.42098 13.8603 4.5 14.0511 4.5 14.25V19.5H19.5V14.25C19.5 14.0511 19.579 13.8603 19.7197 13.7197C19.8603 13.579 20.0511 13.5 20.25 13.5C20.4489 13.5 20.6397 13.579 20.7803 13.7197C20.921 13.8603 21 14.0511 21 14.25ZM11.4694 14.7806C11.539 14.8504 11.6217 14.9057 11.7128 14.9434C11.8038 14.9812 11.9014 15.0006 12 15.0006C12.0986 15.0006 12.1962 14.9812 12.2872 14.9434C12.3783 14.9057 12.461 14.8504 12.5306 14.7806L16.2806 11.0306C16.3503 10.9609 16.4056 10.8782 16.4433 10.7872C16.481 10.6961 16.5004 10.5985 16.5004 10.5C16.5004 10.4015 16.481 10.3039 16.4433 10.2128C16.4056 10.1218 16.3503 10.0391 16.2806 9.96937C16.2109 9.89969 16.1282 9.84442 16.0372 9.8067C15.9461 9.76899 15.8485 9.74958 15.75 9.74958C15.6515 9.74958 15.5539 9.76899 15.4628 9.8067C15.3718 9.84442 15.2891 9.89969 15.2194 9.96937L12.75 12.4397V3.75C12.75 3.55109 12.671 3.36032 12.5303 3.21967C12.3897 3.07902 12.1989 3 12 3C11.8011 3 11.6103 3.07902 11.4697 3.21967C11.329 3.36032 11.25 3.55109 11.25 3.75V12.4397L8.78063 9.96937C8.63989 9.82864 8.44902 9.74958 8.25 9.74958C8.05098 9.74958 7.86011 9.82864 7.71937 9.96937C7.57864 10.1101 7.49958 10.301 7.49958 10.5C7.49958 10.699 7.57864 10.8899 7.71937 11.0306L11.4694 14.7806Z"
          fill="black"
        />
      </svg>

      <svg
        @click="print_button"
        class="print-img"
        width="21"
        height="18"
        viewBox="0 0 21 18"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M18.6253 3.75H17.25V0.75C17.25 0.551088 17.171 0.360322 17.0303 0.21967C16.8897 0.0790178 16.6989 0 16.5 0H4.5C4.30109 0 4.11032 0.0790178 3.96967 0.21967C3.82902 0.360322 3.75 0.551088 3.75 0.75V3.75H2.37469C1.065 3.75 0 4.75969 0 6V13.5C0 13.6989 0.0790176 13.8897 0.21967 14.0303C0.360322 14.171 0.551088 14.25 0.75 14.25H3.75V17.25C3.75 17.4489 3.82902 17.6397 3.96967 17.7803C4.11032 17.921 4.30109 18 4.5 18H16.5C16.6989 18 16.8897 17.921 17.0303 17.7803C17.171 17.6397 17.25 17.4489 17.25 17.25V14.25H20.25C20.4489 14.25 20.6397 14.171 20.7803 14.0303C20.921 13.8897 21 13.6989 21 13.5V6C21 4.75969 19.935 3.75 18.6253 3.75ZM5.25 1.5H15.75V3.75H5.25V1.5ZM15.75 16.5H5.25V12H15.75V16.5ZM19.5 12.75H17.25V11.25C17.25 11.0511 17.171 10.8603 17.0303 10.7197C16.8897 10.579 16.6989 10.5 16.5 10.5H4.5C4.30109 10.5 4.11032 10.579 3.96967 10.7197C3.82902 10.8603 3.75 11.0511 3.75 11.25V12.75H1.5V6C1.5 5.58656 1.89281 5.25 2.37469 5.25H18.6253C19.1072 5.25 19.5 5.58656 19.5 6V12.75ZM17.25 7.875C17.25 8.0975 17.184 8.31501 17.0604 8.50002C16.9368 8.68502 16.7611 8.82922 16.5555 8.91436C16.35 8.99951 16.1238 9.02179 15.9055 8.97838C15.6873 8.93498 15.4868 8.82783 15.3295 8.6705C15.1722 8.51316 15.065 8.31271 15.0216 8.09448C14.9782 7.87625 15.0005 7.65005 15.0856 7.44448C15.1708 7.23891 15.315 7.06321 15.5 6.9396C15.685 6.81598 15.9025 6.75 16.125 6.75C16.4234 6.75 16.7095 6.86853 16.9205 7.0795C17.1315 7.29048 17.25 7.57663 17.25 7.875Z"
          fill="black"
        />
      </svg>
      <div class="line-top"></div>
      <div class="last-update-text">Last update March 2023</div>
    </div>
    <div class="Service">
      <div class="scroll terms">
        <p class="title">Chapter 1: General Provisions</p>
        <br />
        <p class="title">Article 1 (Purpose)</p>
        <p class="service-text">
          These Terms and Conditions stipulate all matters related to the use
          and provision of services of the FOODYCODE “homepage” and the
          FOODYCODE “application” (hereinafter “homepage” and “application” are
          referred to as “APP”) operated by FOORIDGE. for purpose.
        </p>

        <p class="title">Article 2 (Definition of Terms)</p>
        <p class="service-text">
          ① The definitions of terms used in these Terms and Conditions are as
          follows. “Service” refers to all services provided by the company,
          such as guarantee analysis services that “users” can use through PCs
          and mobile devices implemented. “User” refers to members and
          non-members who access the “APP” and receive the services provided by
          the “APP” in accordance with these Terms and Conditions. “Member”
          refers to a person who has registered as a member by providing
          personal information to “APP” and uses the services provided by “APP”.
          “Mobile device” refers to a device that can be used by downloading or
          installing content, such as mobile phones, smartphones, personal
          digital assistants (PDAs), and tablets. “Account information” refers
          to the information provided by the member to the company, such as the
          member's member number, external account information such as my
          insurance, and device information. “Application” means all programs
          that are downloaded or installed through a mobile device to use the
          services provided by the company.
          <br />
          ② The definitions of the terms used in these Terms and Conditions,
          except for those set forth in Paragraph 1 of this Article, shall be
          governed by related laws and service-specific policies.
        </p>
        <p class="title">
          Article 3 (Effect and change of terms and conditions)
        </p>
        <p class="service-text">
          ① These terms and conditions become effective when posted on the “APP”
          or its connection screen or notified to users.
          <br />② If there are unavoidable conditions or circumstances, the
          company may revise these terms and conditions to the extent that it
          does not violate relevant laws such as the 「Regulation of Terms and
          Conditions」 and 「Act on Promotion of Information and Communications
          Network Utilization and Information Protection」. <br />③ When the
          company revises the terms and conditions, it specifies the date of
          application, the details of the amendment, and the reason for the
          amendment, and notifies the user by posting it on the “APP” or its
          connection screen at least 7 days before the effective date. However,
          if the changed content is unfavorable to the member or is a
          significant change, it will be notified in the same way as in the text
          until 30 days prior to the effective date, and the member's e-mail
          address, e-memo, message in the service, text message (LMS/SMS ) to
          notify members. In this case, the contents before and after the
          revision are clearly compared and displayed so that members can easily
          understand them. <br />④ When the company revises the terms and
          conditions, after notifying the revised terms and conditions, the
          member's consent to the application of the revised terms and
          conditions is checked. When the company makes a notice or notice under
          Paragraph 3, the company also announces or notifies that the member
          will be deemed to have agreed unless the member expresses his or her
          intention to agree or reject the revised terms and conditions. If you
          do not mark, you can be regarded as agreeing to the revised terms and
          conditions. If the member does not agree to the revised terms and
          conditions, the company or member may terminate the service use
          contract.
        </p>

        <p class="title">
          Article 4 (Guidelines outside of the Terms and Conditions)
        </p>
        <p class="service-text">
          Matters not specified in these Terms and Conditions and the
          interpretation of these Terms and Conditions shall be governed by
          relevant laws and customs, such as the 「Act on the Regulation of
          Terms and Conditions」, the 「Act on Promotion of Information and
          Communications Network Utilization and Information Protection, etc.」
          follow
        </p>

        <p class="title">Article 5 (Membership Registration)</p>
        <p class="service-text">
          ① When a user applies for membership by agreeing to the terms and
          conditions after entering membership information according to the form
          set forth in the “APP”, the company approves the application and
          becomes a member. <br />② In principle, the company accepts the
          application for membership in accordance with the preceding paragraph.
          However, the company may reject membership registration or lose
          membership after the fact for users who fall under any of the
          following subparagraphs. If member information is falsely entered or
          another person's name is stolen In the case of using the service
          through an abnormal or indirect method in a country where the company
          does not provide the service If the application is made for the
          purpose of hindering social well-being and order or morals If you want
          to use the service for fraudulent purposes If you want to use the
          service for the purpose of pursuing profit If the applicant for
          membership has previously lost membership in accordance with these
          terms and conditions If you are under the age of 14 In case the
          acceptance is judged to be inappropriate for other reasons
          corresponding to each subparagraph <br />③ If there is a change in the
          member information registered at the time of signup, the member must
          immediately notify the company of the change by directly modifying the
          “APP” or by e-mail or other means.
        </p>

        <p class="title">
          Article 6 (Withdrawal of Membership and Loss of Qualification)
        </p>
        <p class="service-text">
          ① If a member does not want to use the service at any time, he or she
          may request withdrawal at any time, in which case the company will
          immediately process the withdrawal of membership. Due to membership
          withdrawal, all usage information held by the member within the
          service will be deleted and recovery will be impossible. <br />② The
          company may notify the member and restrict or suspend the use of the
          service or cancel membership if there is a serious reason why the
          member cannot maintain this contract, such as prohibiting this
          agreement or acting against public order and morals. <br />③ If the
          company loses membership, membership registration is canceled. In this
          case, the member is notified and given an opportunity to explain
          before member registration is canceled. <br />④ The company suspends
          or terminates the use contract and separates the member's personal
          information to protect the personal information of the member who has
          not used the company's service for one year consecutively from the
          latest service use date (hereinafter referred to as "dormant
          account"). Actions such as storage or destruction may be taken. In
          this case, members will be notified of the fact that measures such as
          suspension or termination of the contract, separate storage or
          destruction of personal information will be taken, and personal
          information to be destroyed, 30 days prior to the date of action.
        </p>

        <p class="title">Article 7 (Notification to Members)</p>
        <p class="service-text">
          ① When the company notifies members, it can be done by e-mail or cell
          phone number submitted by the member to the company. <br />② In the
          case of notification to unspecified members, the company can
          substitute individual notification by posting on the "APP" for more
          than 30 days.
        </p>

        <p class="title">Article 8 (Obligations of the Company)</p>
        <p class="service-text">
          ① The Company sincerely observes the exercise of rights and
          fulfillment of obligations stipulated in the relevant laws and these
          terms and conditions in good faith. <br />② The company must have a
          security system to protect personal information (including credit
          information) so that members can use the service safely, and disclose
          and comply with the personal information processing policy. The
          company does not disclose or provide the member's personal information
          to a third party, except as stipulated in these terms and conditions
          and the personal information processing policy. <br />③ In order to
          provide continuous and stable service, the company is in the process
          of improving the service. We will do our best to repair or restore it
          without delay.
        </p>

        <p class="title">Article 9 (Obligations of Members)</p>
        <p class="service-text">
          ① Members shall not engage in any of the following acts in relation to
          the use of the services provided by the company. Stealing someone
          else's name or entering false information when applying for use or
          changing member information An act of impersonating an employee or
          operator of the company or sending an e-mail by stealing the name of
          another person, an act of pretending to be someone else or falsely
          specifying a relationship with another person Unauthorized collection,
          storage, posting or dissemination of personal information of other
          members An act of using the service for purposes other than its
          original purpose, such as for-profit, business, advertising, public
          relations, political activities, election campaigns, etc. An act of
          copying, distributing, promoting or commercially using information
          obtained by using the company's service without permission, or an act
          of using the service by exploiting known or unknown bugs Acts of
          deceiving others to gain advantage, acts of causing harm to others in
          relation to the use of the company's services Infringing on the
          intellectual property rights or portrait rights of the company or
          others, defaming or inflicting damage on the reputation of others
          Intentionally transmitting, posting, or distributing information
          (computer programs) whose transmission or posting is prohibited by
          law, or viruses, computer code, files, programs, etc. designed for the
          purpose of interfering with or destroying the normal operation of
          computer software, hardware, or telecommunications equipment or act of
          using Change the application without obtaining special rights from the
          company, add or insert other programs into the application, hack or
          reverse engineer the server, leak or change the source code or
          application data, build a separate server, or An act of impersonating
          a company by arbitrarily changing or stealing a part of the site Other
          acts that violate related laws or against good customs and other
          social norms <br />② Members are responsible for managing their ID and
          password, and they must not be used by third parties. <br />③ Users
          must comply with the provisions of these terms and conditions and
          related laws.
        </p>

        <p class="title">Article 10 (Use of Service)</p>
        <p class="service-text">
          ① “APP” provides the following services to members. However, in order
          to use the service provided by the company as “APP”, the user may be
          additionally requested to consent to the terms of use of location
          information and the provision of “account information” if necessary,
          and if consent is not given, some services such as insurance contract
          inquiry may be limited. Insurance contract inquiry and analysis
          information provision See my insurance (Korea Credit Information
          Service) APP subscription agency email reception service Insurance
          product related planner connection and guarantee consulting
          Explanation and guidance on insurance products handled by the company
          Provision of contents such as current affairs, finance, investment,
          real estate, health management, etc. Services related to insurance
          claims Other services determined by the company <br />② If the company
          has obtained separate consent from the member, it can provide various
          useful information about service use to the member by text message,
          push notification, etc., in addition to posting on the “APP”. <br />③
          In principle, the use of the service is 24/7 unless there is a special
          problem in the business or technology of the "APP". However,
          exceptions are made for the days and times set by the company due to
          the need for regular inspections, etc.<br />④ The company may
          temporarily suspend the provision of services in the event of
          maintenance, inspection, replacement of the “APP” system, failure of
          the system, loss of communication, or other force majeure. However, in
          case of service interruption, the company notifies the “APP” in
          advance, and if there is an unavoidable reason for not notifying in
          advance, it notifies the member by the method specified in Article.
        </p>

        <p class="title">
          Article 11 (Protection and Use of Personal Information)
        </p>
        <p class="service-text">
          ① Company collects the minimum amount of information necessary to
          provide smooth service when collecting information from users. <br />②
          When the company collects personally identifiable personal information
          and account information of a user, it must obtain the user's consent.
          <br />③ The company does not provide the member's personal information
          to others without the consent of the member, except in accordance with
          the relevant laws or when there is a request from the relevant
          government agency. <br />④ Users may request to view and correct
          errors or withdraw their consent to their personal information held by
          the company at any time, and the company is obliged to take necessary
          measures without delay. If a user requests correction of an error, the
          personal information will not be used until the error is corrected.
          <br />⑤ Other personal information-related matters are subject to the
          privacy policy separately posted on the “APP”.
        </p>

        <p class="title">Article 12 (Company's Immunity)</p>
        <p class="service-text">
          ① The company shall deal with damages suffered by users or third
          parties due to the temporary suspension of service provision due to
          reasons in Article 10, paragraphs 3 and 4 of these Terms and
          Conditions, unless otherwise specified in the relevant laws. No
          separate compensation is given to <br />② The company is not
          responsible for any obstacles in service use caused by the member's
          intention or negligence. <br />③ The company is not responsible for
          the reliability and accuracy of information or data posted in relation
          to the service unless there is intentional or gross negligence.
          <br />④ The company is not responsible for any damages incurred to
          members in connection with the use of services provided free of
          charge. <br />⑤ The company is not responsible for the member's
          failure to obtain or lose the expected benefits by using the service.
          <br />⑥ The company is not responsible for damages caused by members
          not managing their “APP” ID and password, mobile device password,
          account information, etc. <br />⑦ If a member cannot use all or part
          of the content due to a change of mobile device, change of mobile
          device number, change of operating system (OS) version, overseas
          roaming, change of carrier, etc., the company shall not be held
          liable. <br />⑧ If a member deletes the content or account information
          provided by the company, the company is not responsible for it.
        </p>

        <p class="title">Article 13 (Attribution of copyright, etc.)</p>
        <p class="service-text">
          ① The copyright and other intellectual property rights for the
          contents within the service produced by the company belong to the
          company.
          <br />② Members may use methods (editing, publishing, performing,
          distributing, broadcasting, etc. , including the creation of secondary
          works, etc. (the same shall apply below) should not be used for
          commercial purposes or allowed to be used by others. <br />③ If a
          member's post contains content that violates related laws, such as the
          Information and Communications Network Act and the Copyright Act, the
          holder of right may request suspension or deletion of the post in
          accordance with the procedures set forth in the relevant law, and
          civil and criminal responsibilities arising therefrom. is entirely
          borne by the member himself, and the company must take action in
          accordance with the relevant laws. <br />④ Even if there is no request
          from the right holder pursuant to the preceding paragraph, the company
          may take temporary measures against the post in accordance with the
          relevant laws if there is a reason for recognizing infringement of
          rights or if it violates other company policies and related laws.
          <br />⑤ This article is valid while the company operates the service,
          and continues to apply even after membership withdrawal.
        </p>

        <p class="title">
          Article 14 (Member's Grievance Handling and Dispute Resolution)
        </p>
        <p class="service-text">
          ① Considering the member's convenience, the company guides members on
          how to present their opinions or complaints within the service or on
          the connection screen. <br />② If the opinion or complaint raised by
          the member is objectively recognized as legitimate, the company will
          promptly process it within a reasonable period of time. However, if
          the processing takes a long time, the member is notified of the reason
          for the long period of time and the processing schedule in the service
          or in accordance with Article 8.
        </p>

        <p class="title">Article 15 (Jurisdiction and Governing Law)</p>
        <p class="service-text">
          These terms and conditions shall be governed by and interpreted in
          accordance with the laws of the Republic of Korea. If a lawsuit is
          filed due to a dispute between the company and the member, the court
          in accordance with the procedure prescribed by law shall be the
          competent court.
        </p>
      </div>
    </div>
    <div class="Footer">
      <div class="line-bottom"></div>
      <button class="decline" @click="click_decline">Decline</button>
      <button class="accept" @click="click_accpet">Accept</button>
    </div>
  </div>
</template>

<script>
import SignUpHeader from "../components/SignUpHeader.vue";
import StepCard from "../components/StepCard.vue";
export default {
  components: {
    SignUpHeader,
    StepCard,
  },
  props: {},
  data() {
    return {};
  },
  methods: {
    click_accpet() {
      location.href = "#/signup2";
    },
    click_decline() {
      location.href = "#/login";
    },
    download_button() {
      alert("Comming Soon..");
    },
    print_button() {
      alert("Comming Soon..");
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap");
.Service,
.Service * {
  box-sizing: border-box;
}
.Head {
  background: #ffffff;
  width: 100%;
  top: 130px;
  height: 126px;
  position: absolute;
}
.Service {
  background: #ffffff;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 356px);
  top: 256px;
  position: absolute;
}

.terms-of-service {
  color: #000000;
  text-align: left;
  font: 700 20px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 40px;
  letter-spacing: 1.2px;
}
.download-img {
  position: absolute;
  left: 76.9%;
  top: 58px;
  cursor: pointer;
}
.print-img {
  position: absolute;
  left: 86.9%;
  top: 63px;
  cursor: pointer;
}
.last-update-text {
  color: #000000;
  text-align: left;
  font: 400 10px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 68px;
  letter-spacing: 0.6px;
}

.scroll {
  position: relative;
  display: inline-block;
  width: 84.6%;
  height: calc(var(--vh, 1vh) * 100 - 356px);
  padding-right: 7.7%;
  margin-left: 7.7%;
  margin-right: 7.7%;
  overflow-y: scroll;
  box-sizing: border-box;
}
.terms::-webkit-scrollbar {
  width: 4px;
}
.terms::-webkit-scrollbar-thumb {
  background: #fbdc71;
  background-clip: padding-box;
}
.terms::-webkit-scrollbar-track {
  background: #e3e3e3;
}

.title {
  font: 600 12px "Noto Sans", sans-serif;
  letter-spacing: 0.6px;
}
.service-text {
  font: 300 10px "Noto Sans", sans-serif;
  letter-spacing: 0.6px;
  margin-left: 2.6%;
  line-height: 20px;
}
.line-top {
  width: 94.9%;
  height: 1px;
  top: 100px;
  position: absolute;
  background: #e3e3e3;
}
.Footer {
  background: #ffffff;
  width: 100%;
  height: 100px;
  position: absolute;
  bottom: 0px;
}
.line-bottom {
  width: 94.9%;
  height: 1px;
  top: 20px;
  position: absolute;
  background: #e3e3e3;
}
.accept {
  background: #1c9181;
  width: 28.2%;
  height: 34px;
  position: absolute;
  left: 16.7%;
  top: 40px;
  color: #ffffff;
  text-align: center;
  font: 400 15px "Noto Sans", sans-serif;
  border: none;
  cursor: pointer;
}
.decline {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 28.2%;
  height: 34px;
  position: absolute;
  left: 53.8%;
  top: 40px;
  color: #1c9181;
  text-align: center;
  font: 400 15px "Noto Sans", sans-serif;
  cursor: pointer;
  background: none;
}
</style>
