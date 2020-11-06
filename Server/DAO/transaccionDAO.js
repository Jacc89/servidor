let dbConfig = require("../Utilities/mysqlConfig");


// transacciones
let getTransacciones = (criteria, callback) => {
    criteria.transaccion_id ? conditions += ` and transacciones_id = '${criteria.transacciones_id}'` : true;
    dbConfig.getDB().query(`select * from transacciones where 1`, criteria, callback);
}

let getTransaccionDetail = (criteria, callback) => {
    let conditions = "";
    criteria.id ? conditions += ` and id = '${criteria.id}'` : true;
    dbConfig.getDB().query(`select * from transacciones where 1 ${conditions}`, callback);
}

let createTransaccion = (dataToSet, callback) => {
    console.log("insert into transacciones set ? ", dataToSet, 'pankaj')
    dbConfig.getDB().query("insert into transacciones set ? ", dataToSet, callback);
}

let deleteTransaccion = (criteria, callback) => {
    let conditions = "";
    criteria.id ? conditions += ` and id = '${criteria.id}'` : true;
    console.log(`delete from Transacciones where 1 ${conditions}`);
    dbConfig.getDB().query(`delete from transacciones where 1 ${conditions}`, callback);

}

let updateTransaccion = (criteria, dataToSet, callback) => {
    let conditions = "";
    let setData = "";
    criteria.id ? conditions += ` and id = '${criteria.id}'` : true;
    dataToSet.fecha ? setData += `fecha = '${dataToSet.fecha}'` : true;
    dataToSet.ip ? setData += `, ip = '${dataToSet.ip}'` : true;
    dataToSet.usuario ? setData += `usuario = '${dataToSet.usuario}'` : true;
    dataToSet.estado ? setData += `, estado = '${dataToSet.estado}'` : true;
    console.log(`UPDATE transacciones SET ${setData} where 1 ${conditions}`);
    dbConfig.getDB().query(`UPDATE transacciones SET ${setData} where 1 ${conditions}`, callback);
}

module.exports = {
    // transacciones
    getTransacciones: getTransacciones,
    createTransaccion: createTransaccion,
    deleteTransaccion: deleteTransaccion,
    updateTransaccion: updateTransaccion,
    getTransaccionDetail: getTransaccionDetail

}