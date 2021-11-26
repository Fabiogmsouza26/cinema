var express = require("express");
var router = express.Router();

var generoController = require("../controllers/generoController")

router.post("/votar", function (req, res) {
    generoController.votar(req, res)
});


module.exports = router;