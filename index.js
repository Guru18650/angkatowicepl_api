const express = require("express");
const app = express();
const port = 3000;
const mysql = require("mysql2");

app.use(express.json());

require('dotenv').config()

app.use(
  express.urlencoded({
    extended: true,
  })
);

app.get("/", (req, res) => {
  res.json({ message: "ok" });
});

const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

app.post("/words/getall", (req, res) => {
var rows = db.query("SELECT * FROM words;", function(err, results, fields) {
    res.json(results);
  });
})

app.listen(port, () => {
  console.log(`API listening at http://localhost:${port}`);
});
