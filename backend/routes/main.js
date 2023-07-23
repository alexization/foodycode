var express = require("express");
var router = express.Router();
var restaurants = require("../restaurants.json");

router.get("/", function (req, res, next) {
  res.send(restaurants);
});

router.get("/:id", function (req, res, next) {
  var id = parseInt(req.params.id, 10);
  var restaurant = restaurants.filter(function (restaurant) {
    return restaurant.id == id;
  });
  res.send(restaurant);
});

module.exports = router;
