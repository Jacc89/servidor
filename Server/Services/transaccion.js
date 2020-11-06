let async = require('async'),
parseString = require('xml2js').parseString;

let util = require('../Utilities/util'),
transaccionDAO = require('../DAO/transaccionDAO');
config = require("../Utilities/config").config;

// ++++++++++++++++ transacciones+++++++++++++++++++++++++++++
/**API to create the transacciones */
let createTransaccion = (data, callback) => {
    async.auto({
        transaccion: (cb) => {
                var dataToSet = {
                    "fecha": data.fecha ? data.fecha : '',
                    "ip": data.ip,
                    "usuario": data.usuario,
                    "estado": data.estado,
                }
                console.log(dataToSet);
                transaccionDAO.createTransaccion(dataToSet, (err, _dbData) => {
                    if (err) {
                        cb(null, { "statusCode": util.statusCode.FOUR_ZERO_ONE, "statusMessage": util.statusMessage.SERVER_BUSY });
                        return;
                    }

                    cb(null, { "statusCode": util.statusCode.OK, "statusMessage": util.statusMessage.DATA_UPDATED, "result": dataToSet });
                });
            }
            //]
    }, (_err, response) => {
        callback(response.transacciones);
    });
}

/**API to update the article */
let updateTransacciones = (data, callback) => {
    async.auto({
        transaccionesUpdate: (cb) => {
            if (!data.id) {
                cb(null, { "statusCode": util.statusCode.FOUR_ZERO_ONE, "statusMessage": util.statusMessage.PARAMS_MISSING })
                return;
            }
            console.log('phase 1');
            var criteria = {
                id: data.id,
            }
            var dataToSet = {
                    "fecha": data.fecha,
                    "ip": data.ip,
                    "usuario": data.usuario,
                    "estado": data.estado,
            }
            console.log(criteria, 'test', dataToSet);
            transaccionDAO.updateTransacciones(criteria, dataToSet, (err, _dbData) => {
                if (err) {
                    cb(null, { "statusCode": util.statusCode.FOUR_ZERO_ONE, "statusMessage": util.statusMessage.SERVER_BUSY });
                    return;
                } else {
                    cb(null, { "statusCode": util.statusCode.OK, "statusMessage": util.statusMessage.DATA_UPDATED, "result": dataToSet });
                }
            });
        }
    }, (_err, response) => {
        callback(response.transaccionesUpdate);
    });
}

/**API to delete the subject */
let deleteTransacciones = (data, callback) => {
    console.log(data, 'data to set')
    async.auto({
        removeTransacciones: (cb) => {
            if (!data.id) {
                cb(null, { "statusCode": util.statusCode.FOUR_ZERO_ONE, "statusMessage": util.statusMessage.PARAMS_MISSING })
                return;
            }
            var criteria = {
                id: data.id,
            }
            transaccionDAO.deleteTransacciones(criteria, (err, _dbData) => {
                if (err) {
                    console.log(err);
                    cb(null, { "statusCode": util.statusCode.FOUR_ZERO_ONE, "statusMessage": util.statusMessage.SERVER_BUSY });
                    return;
                }
                cb(null, { "statusCode": util.statusCode.OK, "statusMessage": util.statusMessage.DELETE_DATA });
            });
        }
    }, (_err, response) => {
        callback(response.removeTransacciones);
    });
}

/***API to get the transacciones list */
let getTransacciones = (_data, callback) => {
    async.auto({
        transacciones: (cb) => {
            transaccionDAO.getTransacciones({}, (err, data) => {
                if (err) {
                    cb(null, { "errorCode": util.statusCode.INTERNAL_SERVER_ERROR, "statusMessage": util.statusMessage.SERVER_BUSY });
                    return;
                }
                cb(null, data);
                return;
            });
        }
    }, (_err, response) => {
        callback(response.transacciones);
    })
}

/***API to get the transaccion detail by id */
let getTransaccionesById = (data, callback) => {
    async.auto({
        transacciones: (cb) => {
            let criteria = {
                "id": data.id
            }
            transaccionDAO.getTransaccionesDetail(criteria, (err, data) => {
                if (err) {
                    console.log(err, 'error----');
                    cb(null, { "errorCode": util.statusCode.INTERNAL_SERVER_ERROR, "statusMessage": util.statusMessage.SERVER_BUSY });
                    return;
                }
                cb(null, data[0]);
                return;
            });
        }
    }, (_err, response) => {
        callback(response.transacciones);
    })
}

module.exports = {
    // transacciones
    getTransacciones: getTransacciones,
    getTransaccionesById: getTransaccionesById,
    createTransaccion: createTransaccion,
    updateTransacciones: updateTransacciones,
    deleteTransacciones: deleteTransacciones,


};