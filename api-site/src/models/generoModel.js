var database = require("../database/config")

var contador = 0;
var contador2 = 0;


function votarGenero(idGenero) {


        var instrucao = `
        insert into selecao_generos values (null,${idGenero}) 
    `;

        return database.executar(instrucao);
    
}


module.exports = {
    votarGenero
}