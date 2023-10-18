const express = require("express");
const app = express();
app.use(express.json());

require('dotenv').config()

const wordsRouter = require('./routes/words');
const authRouter = require('./routes/auth');

app.use(
  express.urlencoded({
    extended: true,
  })
);

app.get("/", (req, res) => {
  res.json({ message: "ok" });
});

app.use('/words/', wordsRouter);
app.use('/auth/', authRouter);

const port = process.env.SERVER_PORT; 

app.listen(port, () => {
  console.log(`API listening at 127.0.0.1:${port}`);
});
