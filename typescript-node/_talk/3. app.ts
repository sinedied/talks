import express = require('express');
const app = express();

app.get('/', (_req, res) => {
  res.send('Hello HT');
});

app.listen(3000, () => {
  console.log('server is up!');
});

