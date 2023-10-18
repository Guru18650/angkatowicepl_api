const mysql = require("mysql2");

function query(sql, params) {
    var db = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USERNAME,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_NAME
    });
    const res = db.execute(sql, params);
    db.end();
    return res;
}

module.exports = {
    query
}