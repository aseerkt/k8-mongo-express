import mongoose from 'mongoose';
import dbConfig from '../config/db/index.js';

const connectDB = async () => {
  try {
    mongoose.set('strictQuery', false);
    const conn = await mongoose.connect(dbConfig.url, {
      user: dbConfig.user,
      pass: dbConfig.password,
    });
    console.log(`MongoDB connection ${conn.connection.host}`);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
};

export default connectDB;
