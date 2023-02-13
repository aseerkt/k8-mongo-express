import { faker } from '@faker-js/faker';
import UserModel from '../models/users.model.js';

export const createUser = async () => {
  try {
    const user = await UserModel.create({ username: faker.name.fullName() });
    return user;
  } catch (error) {
    console.error(error);
    return error;
  }
};

export const listUsers = async () => {
  try {
    const users = await UserModel.find();
    return users;
  } catch (error) {
    console.error(error);
    return error;
  }
};
