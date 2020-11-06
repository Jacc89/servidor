let mysqlConfig = require("../Utilities/mysqlConfig");

let initialize = () => {
    mysqlConfig.getDB().query("create table IF NOT EXISTS article (id INT auto_increment primary key, category VARCHAR(30), title VARCHAR(24), img varchar(255))");

    mysqlConfig.getDB().query("create table IF NOT EXISTS transacciones (id INT auto_increment primary key, fecha DATETIME, usuario VARCHAR(20), ip varchar(15), estado varchar(30))"); 

    // mysqlConfig.getDB().query(
    //     "create trigger after_insert_article AFTER INSERT ON article  FOR EACH ROW  BEGIN  INSERT INTO transacciones(usuario, ip, estado) VALUES (new.usuario, '192.345.56.67', 'Crear' ); END;"
    // ); otra forma de pasar datos automaticamente en la bd 

}

module.exports = {
    initialize: initialize
}