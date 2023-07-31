class HomeCtrl {
  static home(req, res) {
    //console.log(req.session);
    res.render("home/index");
  }

  static main(req, res) {
    //console.log(req.session);
    res.render("home/main");
  }

  static login(req, res) {
    res.render("home/login");
  }


  static register(req, res) {
    res.render("home/register");
  }


}

module.exports = HomeCtrl;
