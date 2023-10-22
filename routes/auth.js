const express = require("express");
const router = express.Router();
const db = require("../db");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

router.post("/login", (req, res) => {
  let { username, password, admin } = req.body;
  if (!username || !password || !admin) {
    res.json({ msg: "Bad query" }, 403);
    return;
  }
  db.query(
    `SELECT password, username, isAdmin, id FROM users WHERE username LIKE "${username}" AND isAdmin = ${admin};`,
    async function (err, results, fields) {
      if (results.length == 0) {
        res.json({ msg: "Failed" }, 403);
        return;
      }
      let c = await bcrypt.compare(password, results[0].password);
      if(c){
        const key = jwt.sign({id:results[0].id,username:results[0].username, admin:results[0].isAdmin}, process.env.JWT_SECRET);
        res.json({msg:"Success", data:{key:key}});
      } else {
        res.json({ msg: "Failed" }, 403);
      }
    }
  );
});

router.post("/verify", (req, res) => {
    let { key, admin } = req.body;
    if(!key || !admin) {
        res.json({ msg: "Bad query" }, 403);
        return;
    }
    try {
        let decoded = jwt.verify(key, process.env.JWT_SECRET);
        if(admin == 1){
            if(decoded.admin == 1){
                res.json({msg:"Success", data:{decoded}});
            } else {
                res.json({ msg: "Failed" }, 403);
            }
        } else {
        res.json({msg:"Success", data:{decoded}});

        }
    } catch {
        res.json({ msg: "Failed" }, 403);
    }
});

router.post("/register", (req, res) => {});

module.exports = router;
