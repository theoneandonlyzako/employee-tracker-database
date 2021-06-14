const mysql = require("mysql2");
const config = require("./config.json");
const util = require("util");

var connection = mysql.createConnection(config);

connection.connect(function (err) {
    if (err) throw err;
});

connection.query = util.promisify(connection.query);

module.exports = connection;