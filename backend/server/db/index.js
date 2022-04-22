const mongoose = require('mongoose');

async function connect() {
    try {
        await mongoose.connect('mongodb+srv://vproduce:vproduce@cluster0.awvxj.mongodb.net/test', {});
        console.log('MongoDB connected');
    } catch (error) {
        console.log(error);
        console.log('MongoDB failed to connect');
    }
}

module.exports = { connect };
