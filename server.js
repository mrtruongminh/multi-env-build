/* eslint-disable */
const express = require("express");
const path = require("path");

const app = express();

const env = process.env.TEST || "";

console.log("TEST: ", env);

// const envFile = path.resolve("public", env ? `env-${env}.js` : "env.js");

// const indexFile = path.resolve("dist", "index.html");

// app.use((req, res, next) => {
//   const url = req.originalUrl;
//   if (url.includes("env.js")) {
//     console.log("sending", envFile);
//     // instead of env.js we send our desired env file
//     res.sendFile(envFile);
//     return;
//   }
//   next();
// });

app.use(express.static(path.resolve("dist")));
app.get("*", (req, res) => {
  res.sendFile(indexFile);
});

app.listen(8000);
