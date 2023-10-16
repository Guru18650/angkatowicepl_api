const express = require("express");
const app = express();
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

app.post("/words/getcategory", (req, res) => {
  let {category} = req.body;
  if(!category){
    res.json("Bad query", 402);
    return;
  }
  var rows = db.query(`SELECT * FROM words WHERE category LIKE "${category}";`, function(err, results, fields) {
      res.json(results);
    });
  })

app.post("/words/categories", (req, res) => {
  var rows = db.query("SELECT Distinct(category) from words;", function(err, results, fields) {
      res.json(results.map(row => row.category));
    });
  })

const port = process.env.SERVER_PORT; 

app.listen(port, () => {
  console.log(`API listening at 127.0.0.1:${port}`);
});
