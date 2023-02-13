import 'dotenv/config';
import express from 'express';
import connectDB from './database/index.js';
import { createUser, listUsers } from './database/daos/users.dao.js';

const initApp = async () => {
  await connectDB();

  const app = express();

  app.get('/', (_, res) => {
    res.send('Server is up and running');
  });

  app.get('/users', async (_, res) => {
    const result = await listUsers();
    res.json(result);
  });

  app.post('/users', async (_, res) => {
    const result = await createUser();
    res.json(result);
  });

  app.listen(8500, () => {
    console.info('Server is up and running');
  });
};

initApp().catch(console.error);
