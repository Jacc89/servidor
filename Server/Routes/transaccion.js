let express = require('express'),
    router = express.Router(),
    util = require('../Utilities/util'),
    transaccionService = require('../Services/transaccion');

// transacciones

/**Api to createtransacciones */
router.post('/create-transaccion', (req, res) => {
    transaccionService.createTransaccion(req.body, (data) => {
         res.send(data);
     });
 });
 
 // /**Api to updatetransacciones */
 router.put('/update-transaccion', (req, res) => {
    transaccionService.updateTransaccion(req.body, (data) => {
         res.send(data);
     });
 });
 
 // /**Api to delete the transacciones */
 router.delete('/delete-transaccion', (req, res) => {
    transaccionService.deleteTransaccion(req.query, (data) => {
         res.send(data);
     });
 });
 
 /**Api to get the list of transacciones */
 router.get('/get-transacciones', (req, res) => {
     transaccionService.getTransacciones(req.query, (data) => {
         res.send(data);
     });
 });
 
 // /**API to get the article by id... */
 router.get('/get-transaccion-by-id', (req, res) => {
     transaccionService.getTransaccionById(req.query, (data) => {
         res.send(data);
     });
 });

 module.exports = router;
