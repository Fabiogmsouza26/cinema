
var generoModel = require("../models/generoModel");

function votar(req, res) {

    var idGenero = req.body.idGenero;

    generoModel.votarGenero(idGenero)

    res.send('tudo certo')
}


module.exports = {
    votar
}