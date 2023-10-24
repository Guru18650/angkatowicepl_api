const express = require("express");
const router = express.Router();
const db = require('../db');

router.post("/getall", (req, res) => {
  db.query("SELECT * FROM words ORDER BY extended, english;", function (err, results, fields) {
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

router.post("/categorynames", (req, res) => {
    db.query(
      "SELECT * from categories;",
      function (err, results, fields) {
        res.json({msg:"Success", data:results});
      }
    );
});

router.post("/subcategorynames", (req, res) => {
    db.query(
      "SELECT subcategories.name, subcategories.category, COUNT(words.id) as count FROM `subcategories` INNER JOIN words ON words.subcategory = subcategories.name GROUP BY subcategories.name;",
      function (err, results, fields) {
        let json2 = results;
        db.query(
            "SELECT * FROM `subcategories`;",
            function (err, results, fields) {
                let json1 = results;
                const countDict = {};
                json2.forEach(item => {
                  const category = item.category;
                  const name = item.name;
                  const count = item.count;
                  if (count !== undefined) {
                    countDict[`${category}_${name}`] = count;
                  }
                });
                
                const mergedData = json1.map(item => {
                  const category = item.category;
                  const name = item.name;
                  const countKey = `${category}_${name}`;
                  const count = countDict[countKey] || 0; // Get COUNT value or use 0 if not present
                  item.count = count;
                  return item;
                });
                res.json({msg:"Success", data:mergedData});

            });
      }
    );
});

router.post("/addcategory", (req, res) => {
    let { name } = req.body;
    if (!name) {
        res.json({msg:"Bad query"}, 403);
        return;
    }
    db.query(
        `INSERT INTO categories VALUES("${name}");`,
        function (err, results, fields) {
          res.json({msg:"Success"});
        }
      );
});

router.post("/addsubcategory", (req, res) => {
    let { name, category } = req.body;
    if (!name || !category) {
        res.json({msg:"Bad query"}, 403);
        return;
    }
    db.query(
        `INSERT INTO subcategories VALUES("${name}", "${category}");`,
        function (err, results, fields) {
          res.json({msg:"Success"});
        }
      );
});

router.post("/deletecategory", (req, res) => {
    let { name} = req.body;
    if (!name) {
        res.json({msg:"Bad query"}, 403);
        return;
    }
    db.query(
        `DELETE FROM categories WHERE name LIKE "${name}";`,
        function (err, results, fields) {
          res.json({msg:"Success"});
        }
      );
});

router.post("/deletesubcategory", (req, res) => {
    let { name, category} = req.body;
    if (!name || !category) {
        res.json({msg:"Bad query"}, 403);
        return;
    }
    db.query(
        `DELETE FROM subcategories WHERE name LIKE "${name}" AND category LIKE "${category}";`,
        function (err, results, fields) {
          res.json({msg:"Success"});
        }
      );
});

router.post("/deleteword", (req, res) => {
    let { id } = req.body;
    if (!id) {
        res.json({msg:"Bad query"}, 403);
        return;
    }
    db.query(
        `DELETE FROM words WHERE id LIKE "${id}";`,
        function (err, results, fields) {
          res.json({msg:"Success"});
        }
      );
});

router.post("/addword", (req, res) => {
    let { polish, english, category, subcategory, extended } = req.body;
    if (!polish || !english || !category || !subcategory || !extended) {
        res.json({msg:"Bad query"}, 403);
        return;
    }
    db.query(
        `INSERT INTO words VALUES(NULL, "${polish}", "${english}", "${category}", "${subcategory}", ${extended});`,
        function (err, results, fields) {
          res.json({msg:"Success"});
        }
      );
});

module.exports = router;