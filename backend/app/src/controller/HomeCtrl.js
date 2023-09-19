class HomeCtrl {
  static home(req, res) {
    res.render("home/index");
  }

  static main(req, res) {
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
