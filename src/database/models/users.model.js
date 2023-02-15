import { Schema, model } from 'mongoose';

const UserSchema = new Schema(
  {
    username: {
      type: String,
      required: true,
    },
  },
  { timestamps: true }
);

const UserModel = model('User', UserSchema);

export default UserModel;
