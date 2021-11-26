var database = require("../database/config")

var contador = 0;
var contador2 = 0;


function votarGenero(idGenero) {

    if (contador == contador2) {

        var instrucao = `
        update generos set curtidas = ${++contador} where id=${idGenero} 
    `;

        return database.executar(instrucao);

    } else {

        var instrucao2 = `
        update generos set curtidas = ${++contador2} where id=${idGenero} 
    `;

        return database.executar(instrucao2);

    }
}


module.exports = {
    votarGenero
}