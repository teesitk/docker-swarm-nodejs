'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();
var os = require('os')
app.get('/', (req, res) => {
  res.send('Hello world\n'+'Host name is '+os.hostname());
});
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);