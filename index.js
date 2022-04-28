const express = require('express');
const cors = require('cors');
const { db } = require('./db-config');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/crew', async (req, res) => {
  const [rows] = await db.query(
    'SELECT firstname FROM crew ORDER BY firstname ASC'
  );
  res.status(200).json(rows);
});

app.post('/crew', async (req, res) => {
  const { firstname } = req.body;
  await db.query('INSERT INTO crew (firstname) VALUES (?)', [firstname]);
  res.status(201).send('Received new firstname');
});

app.use('/', (req, res) => {
  res.status(404).send('crew not found !');
});

app.listen(5050, () => {
  console.log(`🚀 Server running on http://localhost:5050`);
});
