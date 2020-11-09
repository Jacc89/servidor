let environment = "dev";

let serverURLs = {
    "dev": {
        "NODE_SERVER": "http://localhost:4200/",
        "NODE_SERVER_PORT": "3000",
        // "NODE_SERVER": "http://server3.azlogica.com/",
        // "NODE_SERVER_PORT": "3200",
        "MYSQL_HOST": 'localhost',
        "MYSQL_USER": 'root',
        "MYSQL_PASSWORD": '',
        // "MYSQL_PASSWORD": 'evolucion',
        // 'MYSQL_DATABASE': 'demo_angular7',
        'MYSQL_DATABASE': 'demo_angular7_crud',
    }
}

let config = {
    "DB_URL_MYSQL": {
        "host": `${serverURLs[environment].MYSQL_HOST}`,
        "user": `${serverURLs[environment].MYSQL_USER}`,
        "password": `${serverURLs[environment].MYSQL_PASSWORD}`,
        "database": `${serverURLs[environment].MYSQL_DATABASE}`
    },
    "NODE_SERVER_PORT": {
        "port": `${serverURLs[environment].NODE_SERVER_PORT}`
    },
    "NODE_SERVER_URL": {
        "url": `${serverURLs[environment].NODE_SERVER}`
    }
};

module.exports = {
    config: config
};