const express = require("express");
const router = express.Router();
const db = require('../db');

router.post("/getall", (req, res) => {
  db.query("SELECT * FROM words;", function (err, results, fields) {
    res.json({msg:"Success", data:results});
  });
});

router.post("/getcategory", (req, res) => {
  let { category } = req.body;
  if (!category) {
    res.json({msg:"Bad query"}, 403);
    return;
  }
  db.query(
    `SELECT * FROM words WHERE category LIKE "${category}";`,
    function (err, results, fields) {
      res.json({msg:"Success", data:results});
    }
  );
});

router.post("/categories", (req, res) => {
  db.query(
    "SELECT category, Count(id) as count from words GROUP BY category;",
    function (err, results, fields) {
      res.json({msg:"Success", data:results});
    }
  );
});

module.exports = router;